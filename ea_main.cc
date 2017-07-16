#include <chrono>
#include <iostream>
#include <memory>
#include <random>
#include <string>
#include <thread>
#include <vector>
#include <math.h>
//RTaudio headers
//#include "RtAudio.h"
//#include <cstdlib>
//#include <cstring>
//grpc headers
#include <grpc++/grpc++.h>
#include <grpc++/channel.h>
#include <grpc++/client_context.h>
#include <grpc++/create_channel.h>
#include <grpc++/security/credentials.h>

#include "embedded_assistant.grpc.pb.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::ClientReader;
using grpc::ClientReaderWriter;
using grpc::ClientWriter;
using grpc::Status;

using google::assistant::embedded::v1alpha1::ConverseConfig;
using google::assistant::embedded::v1alpha1::AudioInConfig;
using google::assistant::embedded::v1alpha1::AudioOutConfig;
using google::assistant::embedded::v1alpha1::ConverseState;
using google::assistant::embedded::v1alpha1::AudioOut;
using google::assistant::embedded::v1alpha1::ConverseResult;
using google::assistant::embedded::v1alpha1::ConverseRequest;
using google::assistant::embedded::v1alpha1::ConverseResponse;
using google::assistant::embedded::v1alpha1::EmbeddedAssistant;
//RTaudio...
//typedef signed short MY_TYPE;
#define FORMAT RTAUDIO_SINT16

AudioInConfig MakeAudioInConfig(const std::string& encoding, long sample_rate_hertz){
  AudioInConfig aic;
  aic.set_encoding(encoding);
  aic.set_sample_rate_hertz(sample_rate_hertz);
  return aic;
}

//Encoding MakeEncoding(){

//}

AudioOutConfig MakeAudioOutConfig(const std::string& encoding, long sample_rate_hertz, long volume_percentage){
  AudioOutConfig aoc;
  aoc.set_encoding(encoding);
  aoc.set_sample_rate_hertz(sample_rate_hertz);
  aoc.set_volume_percentage(volume_percentage);
  return aoc;
}

ConverseConfig MakeConverseConfig(const std::string& encoding, long sample_rate_hertz, long volume_percentage){
  ConverseConfig cc;
  cc.mutable_audio_in_config()->CopyFrom(MakeAudioInConfig(encoding, sample_rate_hertz));
  cc.mutable_audio_out_config()->CopyFrom(MakeAudioOutConfig(encoding, sample_rate_hertz, volume_percentage));
  //cc.mutable_converse_state()->CopyFrom();
  return cc;
}

//ConverseState MakeConverseState(void *conversation_state){
//  ConverseState cs;
//}



//ConverseResult MakeConverseResult(){

//}

//auto creds = grpc::GoogleDefaultCredentials();
// Create a channel, stub and make RPC calls (same as in the previous example)
//auto channel = grpc::CreateChannel("embeddedassistant.googleapis.com", creds);
  //auto channel = grpc::CreateChannel("embeddedassistant.googleapis.com",grpc::GoogleDefaultCredentials());
class EmbeddedAssistantClient {
 public:

  EmbeddedAssistantClient(std::shared_ptr<Channel> channel) : stub_(EmbeddedAssistant::NewStub(channel)) {}

  
 void Converse() {
   ClientContext context;
 
 std::shared_ptr<ClientReaderWriter<ConverseRequest, ConverseResponse> > stream(stub_->Converse(&context));

 std::thread writer([stream]() {
    std::vector<ConverseConfig> notes{
        MakeConverseConfig("LINEAR16", 16000, 100)
        };
      for (const ConverseConfig& note : notes) {
        std::cout << "Sending message " << "note.message()" << std::endl;
        stream->Write(note);
}
   stream->WritesDone();
 });

     ConverseResponse converse_response;
     while (stream->Read(&converse_response)) {
       std::cout << "Got message " << std::endl;
     }
     writer.join();
     Status status = stream->Finish();
     if (!status.ok()) {
       std::cout << "RouteChat rpc failed." << std::endl;
     }

 }
 std::unique_ptr<EmbeddedAssistant::Stub> stub_;
};



int main(int argc, char** argv) {
  // Instantiate the client. It requires a channel.
  //auto creds = grpc::GoogleDefaultCredentials();

  EmbeddedAssistantClient embeddedassistant(grpc::CreateChannel("embeddedassistant.googleapis.com", grpc::GoogleDefaultCredentials()));
  
  std::cout << "Conversation started!: " << std::endl;
  embeddedassistant.Converse(); 
  return 0;
}
