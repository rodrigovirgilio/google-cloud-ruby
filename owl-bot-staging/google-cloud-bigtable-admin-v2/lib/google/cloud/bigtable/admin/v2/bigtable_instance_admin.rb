# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/bigtable/admin/v2/version"

require "google/cloud/bigtable/admin/v2/bigtable_instance_admin/credentials"
require "google/cloud/bigtable/admin/v2/bigtable_instance_admin/paths"
require "google/cloud/bigtable/admin/v2/bigtable_instance_admin/operations"
require "google/cloud/bigtable/admin/v2/bigtable_instance_admin/client"

module Google
  module Cloud
    module Bigtable
      module Admin
        module V2
          ##
          # Service for creating, configuring, and deleting Cloud Bigtable Instances and
          # Clusters. Provides access to the Instance and Cluster schemas only, not the
          # tables' metadata or data stored in those tables.
          #
          # To load this service and instantiate a client:
          #
          #     require "google/cloud/bigtable/admin/v2/bigtable_instance_admin"
          #     client = ::Google::Cloud::Bigtable::Admin::V2::BigtableInstanceAdmin::Client.new
          #
          module BigtableInstanceAdmin
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "bigtable_instance_admin", "helpers.rb"
require "google/cloud/bigtable/admin/v2/bigtable_instance_admin/helpers" if ::File.file? helper_path
