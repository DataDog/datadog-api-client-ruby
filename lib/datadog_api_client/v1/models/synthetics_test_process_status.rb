=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  class SyntheticsTestProcessStatus
    NOT_SCHEDULED = "not_scheduled".freeze
    SCHEDULED = "scheduled".freeze
    STARTED = "started".freeze
    FINISHED = "finished".freeze
    FINISHED_WITH_ERROR = "finished_with_error".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = SyntheticsTestProcessStatus.constants.select { |c| SyntheticsTestProcessStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #SyntheticsTestProcessStatus" if constantValues.empty?
      value
    end
  end
end
