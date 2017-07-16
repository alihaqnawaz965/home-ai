# home-ai
Home-AI is aimed for implementation of the Google Assistant Client in C/C++.
There is still work to be done.
The ea_main.cc is the client for interacting with the Assistant API.
The rtaudio folder contains the audio library with examples for audio recording and playback, which can be implemented in the ea_main.cc client.
The header and classes are generated using the embedded_assistant.proto in the "protos" directory.
This file contains two other proto files linked in it.
The procedure in the following doc was followed for Other languages :-
https://developers.google.com/assistant/sdk/prototype/getting-started-other-platforms/integrate

ISSUES :-
Some errors come on compiling with following command:-

car@ubuntu:~/grpc/examples/cpp/embedded_assistant$ g++ -I./ ea_main.cc embedded_assistant.grpc.pb.cc embedded_assistant.pb.cc -lpthread -lgrpc++ -lprotobuf -ldl -std=c++11 -o out

Some times the error is 

/tmp/cc5JA0B6.o: In function `google::assistant::embedded::v1alpha1::EmbeddedAssistant::Stub::Converse(grpc::ClientContext*)':
ea_main.cc:(.text._ZN6google9assistant8embedded8v1alpha117EmbeddedAssistant4Stub8ConverseEPN4grpc13ClientContextE[_ZN6google9assistant8embedded8v1alpha117EmbeddedAssistant4Stub8ConverseEPN4grpc13ClientContextE]+0x23): undefined reference to `google::assistant::embedded::v1alpha1::EmbeddedAssistant::Stub::ConverseRaw(grpc::ClientContext*)'
/tmp/cc5JA0B6.o: In function `EmbeddedAssistantClient::EmbeddedAssistantClient(std::shared_ptr<grpc::Channel>)':
ea_main.cc:(.text._ZN23EmbeddedAssistantClientC2ESt10shared_ptrIN4grpc7ChannelEE[_ZN23EmbeddedAssistantClientC5ESt10shared_ptrIN4grpc7ChannelEE]+0x46): undefined reference to `google::assistant::embedded::v1alpha1::EmbeddedAssistant::NewStub(std::shared_ptr<grpc::ChannelInterface> const&, grpc::StubOptions const&)'
/tmp/cc5JA0B6.o: In function `EmbeddedAssistantClient::Converse()':
ea_main.cc:(.text._ZN23EmbeddedAssistantClient8ConverseEv[_ZN23EmbeddedAssistantClient8ConverseEv]+0xec): undefined reference to `google::assistant::embedded::v1alpha1::ConverseResponse::ConverseResponse()'
ea_main.cc:(.text._ZN23EmbeddedAssistantClient8ConverseEv[_ZN23EmbeddedAssistantClient8ConverseEv]+0x1b5): undefined reference to `google::assistant::embedded::v1alpha1::ConverseResponse::~ConverseResponse()'
ea_main.cc:(.text._ZN23EmbeddedAssistantClient8ConverseEv[_ZN23EmbeddedAssistantClient8ConverseEv]+0x249): undefined reference to `google::assistant::embedded::v1alpha1::ConverseResponse::~ConverseResponse()'
/tmp/cc5JA0B6.o: In function `google::assistant::embedded::v1alpha1::EmbeddedAssistant::Stub::~Stub()':
ea_main.cc:(.text._ZN6google9assistant8embedded8v1alpha117EmbeddedAssistant4StubD2Ev[_ZN6google9assistant8embedded8v1alpha117EmbeddedAssistant4StubD5Ev]+0xd): undefined reference to `vtable for google::assistant::embedded::v1alpha1::EmbeddedAssistant::Stub'
collect2: error: ld returned 1 exit status

Maybe some library is not included but I dont know which.

And sometimes the following error occurs:-


ea_main.cc:42:40: error: ISO C++ forbids declaration of ‘encoding’ with no type [-fpermissive]
 AudioInConfig MakeAudioInConfig(const &encoding, long sample_rate_hertz){
                                        ^
ea_main.cc: In function ‘google::assistant::embedded::v1alpha1::AudioInConfig MakeAudioInConfig(const int&, long int)’:
ea_main.cc:44:28: error: invalid conversion from ‘int’ to ‘google::assistant::embedded::v1alpha1::AudioInConfig_Encoding’ [-fpermissive]
   aic.set_encoding(encoding);
                            ^
In file included from embedded_assistant.grpc.pb.h:22:0,
                 from ea_main.cc:20:
embedded_assistant.pb.h:1278:13: note:   initializing argument 1 of ‘void google::assistant::embedded::v1alpha1::AudioInConfig::set_encoding(google::assistant::embedded::v1alpha1::AudioInConfig_Encoding)’
 inline void AudioInConfig::set_encoding(::google::assistant::embedded::v1alpha1::AudioInCo
             ^
ea_main.cc: At global scope:
ea_main.cc:53:42: error: ISO C++ forbids declaration of ‘encoding’ with no type [-fpermissive]
 AudioOutConfig MakeAudioOutConfig(const &encoding, long sample_rate_hertz, long volume_per
                                          ^
ea_main.cc: In function ‘google::assistant::embedded::v1alpha1::AudioOutConfig MakeAudioOutConfig(const int&, long int, long int)’:
ea_main.cc:55:28: error: invalid conversion from ‘int’ to ‘google::assistant::embedded::v1alpha1::AudioOutConfig_Encoding’ [-fpermissive]
   aoc.set_encoding(encoding);
                            ^
In file included from embedded_assistant.grpc.pb.h:22:0,
                 from ea_main.cc:20:
embedded_assistant.pb.h:1310:13: note:   initializing argument 1 of ‘void google::assistant::embedded::v1alpha1::AudioOutConfig::set_encoding(google::assistant::embedded::v1alpha1::AudioOutConfig_Encoding)’
 inline void AudioOutConfig::set_encoding(::google::assistant::embedded::v1alpha1::AudioOut
             ^
ea_main.cc: In function ‘google::assistant::embedded::v1alpha1::ConverseConfig MakeConverseConfig(const string&, long int, long int)’:
ea_main.cc:63:87: error: invalid initialization of reference of type ‘const int&’ from expression of type ‘const string {aka const std::__cxx11::basic_string<char>}’
   cc.mutable_audio_in_config()->CopyFrom(MakeAudioInConfig(encoding, sample_rate_hertz));
                                                                                       ^
ea_main.cc:42:15: note: in passing argument 1 of ‘google::assistant::embedded::v1alpha1::AudioInConfig MakeAudioInConfig(const int&, long int)’
 AudioInConfig MakeAudioInConfig(const &encoding, long sample_rate_hertz){
               ^
ea_main.cc:64:108: error: invalid initialization of reference of type ‘const int&’ from expression of type ‘const string {aka const std::__cxx11::basic_string<char>}’
 ut_config()->CopyFrom(MakeAudioOutConfig(encoding, sample_rate_hertz, volume_percentage));
                                                                                        ^
ea_main.cc:53:16: note: in passing argument 1 of ‘google::assistant::embedded::v1alpha1::AudioOutConfig MakeAudioOutConfig(const int&, long int, long int)’
 AudioOutConfig MakeAudioOutConfig(const &encoding, long sample_rate_hertz, long volume_per
                ^
ea_main.cc: In lambda function:
ea_main.cc:100:27: error: no matching function for call to ‘grpc::ClientReaderWriter<google::assistant::embedded::v1alpha1::ConverseRequest, google::assistant::embedded::v1alpha1::ConverseResponse>::Write(const google::assistant::embedded::v1alpha1::ConverseConfig&)’
         stream->Write(note);
                           ^
In file included from /usr/local/include/grpc++/impl/codegen/method_handler_impl.h:39:0,
                 from embedded_assistant.grpc.pb.h:26,
                 from ea_main.cc:20:
/usr/local/include/grpc++/impl/codegen/sync_stream.h:467:8: note: candidate: bool grpc::ClientReaderWriter<W, R>::Write(const W&, grpc::WriteOptions) [with W = google::assistant::embedded::v1alpha1::ConverseRequest; R = google::assistant::embedded::v1alpha1::ConverseResponse]
   bool Write(const W& msg, WriteOptions options) override {
        ^
/usr/local/include/grpc++/impl/codegen/sync_stream.h:467:8: note:   candidate expects 2 arguments, 1 provided
/usr/local/include/grpc++/impl/codegen/sync_stream.h:138:15: note: candidate: bool grpc::WriterInterface<W>::Write(const W&) [with W = google::assistant::embedded::v1alpha1::ConverseRequest]
   inline bool Write(const W& msg) { return Write(msg, WriteOptions()); }
               ^
/usr/local/include/grpc++/impl/codegen/sync_stream.h:138:15: note:   no known conversion for argument 1 from ‘const google::assistant::embedded::v1alpha1::ConverseConfig’ to ‘const google::assistant::embedded::v1alpha1::ConverseRequest&’



