# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/vision/v1p3beta1/image_annotator_pb"
require "google/cloud/vision/v1p3beta1/image_annotator_services_pb"
require "google/cloud/vision/v1p3beta1/image_annotator"

class ::Google::Cloud::Vision::V1p3beta1::ImageAnnotator::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_batch_annotate_images
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Vision::V1p3beta1::BatchAnnotateImagesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    requests = [{}]

    batch_annotate_images_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_annotate_images, name
      assert_kind_of ::Google::Cloud::Vision::V1p3beta1::BatchAnnotateImagesRequest, request
      assert_kind_of ::Google::Cloud::Vision::V1p3beta1::AnnotateImageRequest, request["requests"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_annotate_images_client_stub do
      # Create client
      client = ::Google::Cloud::Vision::V1p3beta1::ImageAnnotator::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_annotate_images({ requests: requests }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_annotate_images requests: requests do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_annotate_images ::Google::Cloud::Vision::V1p3beta1::BatchAnnotateImagesRequest.new(requests: requests) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_annotate_images({ requests: requests }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_annotate_images(::Google::Cloud::Vision::V1p3beta1::BatchAnnotateImagesRequest.new(requests: requests), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_annotate_images_client_stub.call_rpc_count
    end
  end

  def test_async_batch_annotate_files
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    requests = [{}]

    async_batch_annotate_files_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :async_batch_annotate_files, name
      assert_kind_of ::Google::Cloud::Vision::V1p3beta1::AsyncBatchAnnotateFilesRequest, request
      assert_kind_of ::Google::Cloud::Vision::V1p3beta1::AsyncAnnotateFileRequest, request["requests"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, async_batch_annotate_files_client_stub do
      # Create client
      client = ::Google::Cloud::Vision::V1p3beta1::ImageAnnotator::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.async_batch_annotate_files({ requests: requests }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.async_batch_annotate_files requests: requests do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.async_batch_annotate_files ::Google::Cloud::Vision::V1p3beta1::AsyncBatchAnnotateFilesRequest.new(requests: requests) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.async_batch_annotate_files({ requests: requests }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.async_batch_annotate_files(::Google::Cloud::Vision::V1p3beta1::AsyncBatchAnnotateFilesRequest.new(requests: requests), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, async_batch_annotate_files_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Vision::V1p3beta1::ImageAnnotator::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Vision::V1p3beta1::ImageAnnotator::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Vision::V1p3beta1::ImageAnnotator::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Vision::V1p3beta1::ImageAnnotator::Operations, client.operations_client
  end
end
