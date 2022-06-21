# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/storage/v1/storage.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/bigquery/storage/v1/arrow_pb'
require 'google/cloud/bigquery/storage/v1/avro_pb'
require 'google/cloud/bigquery/storage/v1/protobuf_pb'
require 'google/cloud/bigquery/storage/v1/stream_pb'
require 'google/cloud/bigquery/storage/v1/table_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/bigquery/storage/v1/storage.proto", :syntax => :proto3) do
    add_message "google.cloud.bigquery.storage.v1.CreateReadSessionRequest" do
      optional :parent, :string, 1
      optional :read_session, :message, 2, "google.cloud.bigquery.storage.v1.ReadSession"
      optional :max_stream_count, :int32, 3
    end
    add_message "google.cloud.bigquery.storage.v1.ReadRowsRequest" do
      optional :read_stream, :string, 1
      optional :offset, :int64, 2
    end
    add_message "google.cloud.bigquery.storage.v1.ThrottleState" do
      optional :throttle_percent, :int32, 1
    end
    add_message "google.cloud.bigquery.storage.v1.StreamStats" do
      optional :progress, :message, 2, "google.cloud.bigquery.storage.v1.StreamStats.Progress"
    end
    add_message "google.cloud.bigquery.storage.v1.StreamStats.Progress" do
      optional :at_response_start, :double, 1
      optional :at_response_end, :double, 2
    end
    add_message "google.cloud.bigquery.storage.v1.ReadRowsResponse" do
      optional :row_count, :int64, 6
      optional :stats, :message, 2, "google.cloud.bigquery.storage.v1.StreamStats"
      optional :throttle_state, :message, 5, "google.cloud.bigquery.storage.v1.ThrottleState"
      oneof :rows do
        optional :avro_rows, :message, 3, "google.cloud.bigquery.storage.v1.AvroRows"
        optional :arrow_record_batch, :message, 4, "google.cloud.bigquery.storage.v1.ArrowRecordBatch"
      end
      oneof :schema do
        optional :avro_schema, :message, 7, "google.cloud.bigquery.storage.v1.AvroSchema"
        optional :arrow_schema, :message, 8, "google.cloud.bigquery.storage.v1.ArrowSchema"
      end
    end
    add_message "google.cloud.bigquery.storage.v1.SplitReadStreamRequest" do
      optional :name, :string, 1
      optional :fraction, :double, 2
    end
    add_message "google.cloud.bigquery.storage.v1.SplitReadStreamResponse" do
      optional :primary_stream, :message, 1, "google.cloud.bigquery.storage.v1.ReadStream"
      optional :remainder_stream, :message, 2, "google.cloud.bigquery.storage.v1.ReadStream"
    end
    add_message "google.cloud.bigquery.storage.v1.CreateWriteStreamRequest" do
      optional :parent, :string, 1
      optional :write_stream, :message, 2, "google.cloud.bigquery.storage.v1.WriteStream"
    end
    add_message "google.cloud.bigquery.storage.v1.AppendRowsRequest" do
      optional :write_stream, :string, 1
      optional :offset, :message, 2, "google.protobuf.Int64Value"
      optional :trace_id, :string, 6
      oneof :rows do
        optional :proto_rows, :message, 4, "google.cloud.bigquery.storage.v1.AppendRowsRequest.ProtoData"
      end
    end
    add_message "google.cloud.bigquery.storage.v1.AppendRowsRequest.ProtoData" do
      optional :writer_schema, :message, 1, "google.cloud.bigquery.storage.v1.ProtoSchema"
      optional :rows, :message, 2, "google.cloud.bigquery.storage.v1.ProtoRows"
    end
    add_message "google.cloud.bigquery.storage.v1.AppendRowsResponse" do
      optional :updated_schema, :message, 3, "google.cloud.bigquery.storage.v1.TableSchema"
      repeated :row_errors, :message, 4, "google.cloud.bigquery.storage.v1.RowError"
      oneof :response do
        optional :append_result, :message, 1, "google.cloud.bigquery.storage.v1.AppendRowsResponse.AppendResult"
        optional :error, :message, 2, "google.rpc.Status"
      end
    end
    add_message "google.cloud.bigquery.storage.v1.AppendRowsResponse.AppendResult" do
      optional :offset, :message, 1, "google.protobuf.Int64Value"
    end
    add_message "google.cloud.bigquery.storage.v1.GetWriteStreamRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.storage.v1.BatchCommitWriteStreamsRequest" do
      optional :parent, :string, 1
      repeated :write_streams, :string, 2
    end
    add_message "google.cloud.bigquery.storage.v1.BatchCommitWriteStreamsResponse" do
      optional :commit_time, :message, 1, "google.protobuf.Timestamp"
      repeated :stream_errors, :message, 2, "google.cloud.bigquery.storage.v1.StorageError"
    end
    add_message "google.cloud.bigquery.storage.v1.FinalizeWriteStreamRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.storage.v1.FinalizeWriteStreamResponse" do
      optional :row_count, :int64, 1
    end
    add_message "google.cloud.bigquery.storage.v1.FlushRowsRequest" do
      optional :write_stream, :string, 1
      optional :offset, :message, 2, "google.protobuf.Int64Value"
    end
    add_message "google.cloud.bigquery.storage.v1.FlushRowsResponse" do
      optional :offset, :int64, 1
    end
    add_message "google.cloud.bigquery.storage.v1.StorageError" do
      optional :code, :enum, 1, "google.cloud.bigquery.storage.v1.StorageError.StorageErrorCode"
      optional :entity, :string, 2
      optional :error_message, :string, 3
    end
    add_enum "google.cloud.bigquery.storage.v1.StorageError.StorageErrorCode" do
      value :STORAGE_ERROR_CODE_UNSPECIFIED, 0
      value :TABLE_NOT_FOUND, 1
      value :STREAM_ALREADY_COMMITTED, 2
      value :STREAM_NOT_FOUND, 3
      value :INVALID_STREAM_TYPE, 4
      value :INVALID_STREAM_STATE, 5
      value :STREAM_FINALIZED, 6
      value :SCHEMA_MISMATCH_EXTRA_FIELDS, 7
      value :OFFSET_ALREADY_EXISTS, 8
      value :OFFSET_OUT_OF_RANGE, 9
    end
    add_message "google.cloud.bigquery.storage.v1.RowError" do
      optional :index, :int64, 1
      optional :code, :enum, 2, "google.cloud.bigquery.storage.v1.RowError.RowErrorCode"
      optional :message, :string, 3
    end
    add_enum "google.cloud.bigquery.storage.v1.RowError.RowErrorCode" do
      value :ROW_ERROR_CODE_UNSPECIFIED, 0
      value :FIELDS_ERROR, 1
    end
  end
end

module Google
  module Cloud
    module Bigquery
      module Storage
        module V1
          CreateReadSessionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.CreateReadSessionRequest").msgclass
          ReadRowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ReadRowsRequest").msgclass
          ThrottleState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ThrottleState").msgclass
          StreamStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.StreamStats").msgclass
          StreamStats::Progress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.StreamStats.Progress").msgclass
          ReadRowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ReadRowsResponse").msgclass
          SplitReadStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.SplitReadStreamRequest").msgclass
          SplitReadStreamResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.SplitReadStreamResponse").msgclass
          CreateWriteStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.CreateWriteStreamRequest").msgclass
          AppendRowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.AppendRowsRequest").msgclass
          AppendRowsRequest::ProtoData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.AppendRowsRequest.ProtoData").msgclass
          AppendRowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.AppendRowsResponse").msgclass
          AppendRowsResponse::AppendResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.AppendRowsResponse.AppendResult").msgclass
          GetWriteStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.GetWriteStreamRequest").msgclass
          BatchCommitWriteStreamsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.BatchCommitWriteStreamsRequest").msgclass
          BatchCommitWriteStreamsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.BatchCommitWriteStreamsResponse").msgclass
          FinalizeWriteStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.FinalizeWriteStreamRequest").msgclass
          FinalizeWriteStreamResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.FinalizeWriteStreamResponse").msgclass
          FlushRowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.FlushRowsRequest").msgclass
          FlushRowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.FlushRowsResponse").msgclass
          StorageError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.StorageError").msgclass
          StorageError::StorageErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.StorageError.StorageErrorCode").enummodule
          RowError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.RowError").msgclass
          RowError::RowErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.RowError.RowErrorCode").enummodule
        end
      end
    end
  end
end
