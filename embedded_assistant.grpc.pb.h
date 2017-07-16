// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: embedded_assistant.proto
// Original file comments:
// Copyright 2017 Google Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
#ifndef GRPC_embedded_5fassistant_2eproto__INCLUDED
#define GRPC_embedded_5fassistant_2eproto__INCLUDED

#include "embedded_assistant.pb.h"

#include <grpc++/impl/codegen/async_stream.h>
#include <grpc++/impl/codegen/async_unary_call.h>
#include <grpc++/impl/codegen/method_handler_impl.h>
#include <grpc++/impl/codegen/proto_utils.h>
#include <grpc++/impl/codegen/rpc_method.h>
#include <grpc++/impl/codegen/service_type.h>
#include <grpc++/impl/codegen/status.h>
#include <grpc++/impl/codegen/stub_options.h>
#include <grpc++/impl/codegen/sync_stream.h>

namespace grpc {
class CompletionQueue;
class Channel;
class RpcService;
class ServerCompletionQueue;
class ServerContext;
}  // namespace grpc

namespace google {
namespace assistant {
namespace embedded {
namespace v1alpha1 {

// Service that implements Google Assistant API.
class EmbeddedAssistant final {
 public:
  static constexpr char const* service_full_name() {
    return "google.assistant.embedded.v1alpha1.EmbeddedAssistant";
  }
  class StubInterface {
   public:
    virtual ~StubInterface() {}
    // Initiates or continues a conversation with the embedded assistant service.
    // Each call performs one round-trip, sending an audio request to the service
    // and receiving the audio response. Uses bidirectional streaming to receive
    // results, such as the `END_OF_UTTERANCE` event, while sending audio.
    //
    // A conversation is one or more gRPC connections, each consisting of several
    // streamed requests and responses.
    // For example, the user says *Add to my shopping list* and the assistant
    // responds *What do you want to add?*. The sequence of streamed requests and
    // responses in the first gRPC message could be:
    //
    // *   ConverseRequest.config
    // *   ConverseRequest.audio_in
    // *   ConverseRequest.audio_in
    // *   ConverseRequest.audio_in
    // *   ConverseRequest.audio_in
    // *   ConverseResponse.event_type.END_OF_UTTERANCE
    // *   ConverseResponse.result.microphone_mode.DIALOG_FOLLOW_ON
    // *   ConverseResponse.audio_out
    // *   ConverseResponse.audio_out
    // *   ConverseResponse.audio_out
    //
    // The user then says *bagels* and the assistant responds
    // *OK, I've added bagels to your shopping list*. This is sent as another gRPC
    // connection call to the `Converse` method, again with streamed requests and
    // responses, such as:
    //
    // *   ConverseRequest.config
    // *   ConverseRequest.audio_in
    // *   ConverseRequest.audio_in
    // *   ConverseRequest.audio_in
    // *   ConverseResponse.event_type.END_OF_UTTERANCE
    // *   ConverseResponse.result.microphone_mode.CLOSE_MICROPHONE
    // *   ConverseResponse.audio_out
    // *   ConverseResponse.audio_out
    // *   ConverseResponse.audio_out
    // *   ConverseResponse.audio_out
    //
    // Although the precise order of responses is not guaranteed, sequential
    // ConverseResponse.audio_out messages will always contain sequential portions
    // of audio.
    std::unique_ptr< ::grpc::ClientReaderWriterInterface< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>> Converse(::grpc::ClientContext* context) {
      return std::unique_ptr< ::grpc::ClientReaderWriterInterface< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>>(ConverseRaw(context));
    }
    std::unique_ptr< ::grpc::ClientAsyncReaderWriterInterface< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>> AsyncConverse(::grpc::ClientContext* context, ::grpc::CompletionQueue* cq, void* tag) {
      return std::unique_ptr< ::grpc::ClientAsyncReaderWriterInterface< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>>(AsyncConverseRaw(context, cq, tag));
    }
  private:
    virtual ::grpc::ClientReaderWriterInterface< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>* ConverseRaw(::grpc::ClientContext* context) = 0;
    virtual ::grpc::ClientAsyncReaderWriterInterface< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>* AsyncConverseRaw(::grpc::ClientContext* context, ::grpc::CompletionQueue* cq, void* tag) = 0;
  };
  class Stub final : public StubInterface {
   public:
    Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel);
    std::unique_ptr< ::grpc::ClientReaderWriter< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>> Converse(::grpc::ClientContext* context) {
      return std::unique_ptr< ::grpc::ClientReaderWriter< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>>(ConverseRaw(context));
    }
    std::unique_ptr<  ::grpc::ClientAsyncReaderWriter< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>> AsyncConverse(::grpc::ClientContext* context, ::grpc::CompletionQueue* cq, void* tag) {
      return std::unique_ptr< ::grpc::ClientAsyncReaderWriter< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>>(AsyncConverseRaw(context, cq, tag));
    }

   private:
    std::shared_ptr< ::grpc::ChannelInterface> channel_;
    ::grpc::ClientReaderWriter< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>* ConverseRaw(::grpc::ClientContext* context) override;
    ::grpc::ClientAsyncReaderWriter< ::google::assistant::embedded::v1alpha1::ConverseRequest, ::google::assistant::embedded::v1alpha1::ConverseResponse>* AsyncConverseRaw(::grpc::ClientContext* context, ::grpc::CompletionQueue* cq, void* tag) override;
    const ::grpc::RpcMethod rpcmethod_Converse_;
  };
  static std::unique_ptr<Stub> NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options = ::grpc::StubOptions());

  class Service : public ::grpc::Service {
   public:
    Service();
    virtual ~Service();
    // Initiates or continues a conversation with the embedded assistant service.
    // Each call performs one round-trip, sending an audio request to the service
    // and receiving the audio response. Uses bidirectional streaming to receive
    // results, such as the `END_OF_UTTERANCE` event, while sending audio.
    //
    // A conversation is one or more gRPC connections, each consisting of several
    // streamed requests and responses.
    // For example, the user says *Add to my shopping list* and the assistant
    // responds *What do you want to add?*. The sequence of streamed requests and
    // responses in the first gRPC message could be:
    //
    // *   ConverseRequest.config
    // *   ConverseRequest.audio_in
    // *   ConverseRequest.audio_in
    // *   ConverseRequest.audio_in
    // *   ConverseRequest.audio_in
    // *   ConverseResponse.event_type.END_OF_UTTERANCE
    // *   ConverseResponse.result.microphone_mode.DIALOG_FOLLOW_ON
    // *   ConverseResponse.audio_out
    // *   ConverseResponse.audio_out
    // *   ConverseResponse.audio_out
    //
    // The user then says *bagels* and the assistant responds
    // *OK, I've added bagels to your shopping list*. This is sent as another gRPC
    // connection call to the `Converse` method, again with streamed requests and
    // responses, such as:
    //
    // *   ConverseRequest.config
    // *   ConverseRequest.audio_in
    // *   ConverseRequest.audio_in
    // *   ConverseRequest.audio_in
    // *   ConverseResponse.event_type.END_OF_UTTERANCE
    // *   ConverseResponse.result.microphone_mode.CLOSE_MICROPHONE
    // *   ConverseResponse.audio_out
    // *   ConverseResponse.audio_out
    // *   ConverseResponse.audio_out
    // *   ConverseResponse.audio_out
    //
    // Although the precise order of responses is not guaranteed, sequential
    // ConverseResponse.audio_out messages will always contain sequential portions
    // of audio.
    virtual ::grpc::Status Converse(::grpc::ServerContext* context, ::grpc::ServerReaderWriter< ::google::assistant::embedded::v1alpha1::ConverseResponse, ::google::assistant::embedded::v1alpha1::ConverseRequest>* stream);
  };
  template <class BaseClass>
  class WithAsyncMethod_Converse : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service *service) {}
   public:
    WithAsyncMethod_Converse() {
      ::grpc::Service::MarkMethodAsync(0);
    }
    ~WithAsyncMethod_Converse() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status Converse(::grpc::ServerContext* context, ::grpc::ServerReaderWriter< ::google::assistant::embedded::v1alpha1::ConverseResponse, ::google::assistant::embedded::v1alpha1::ConverseRequest>* stream) final override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    void RequestConverse(::grpc::ServerContext* context, ::grpc::ServerAsyncReaderWriter< ::google::assistant::embedded::v1alpha1::ConverseResponse, ::google::assistant::embedded::v1alpha1::ConverseRequest>* stream, ::grpc::CompletionQueue* new_call_cq, ::grpc::ServerCompletionQueue* notification_cq, void *tag) {
      ::grpc::Service::RequestAsyncBidiStreaming(0, context, stream, new_call_cq, notification_cq, tag);
    }
  };
  typedef WithAsyncMethod_Converse<Service > AsyncService;
  template <class BaseClass>
  class WithGenericMethod_Converse : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service *service) {}
   public:
    WithGenericMethod_Converse() {
      ::grpc::Service::MarkMethodGeneric(0);
    }
    ~WithGenericMethod_Converse() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status Converse(::grpc::ServerContext* context, ::grpc::ServerReaderWriter< ::google::assistant::embedded::v1alpha1::ConverseResponse, ::google::assistant::embedded::v1alpha1::ConverseRequest>* stream) final override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
  };
  typedef Service StreamedUnaryService;
  typedef Service SplitStreamedService;
  typedef Service StreamedService;
};

}  // namespace v1alpha1
}  // namespace embedded
}  // namespace assistant
}  // namespace google


#endif  // GRPC_embedded_5fassistant_2eproto__INCLUDED
