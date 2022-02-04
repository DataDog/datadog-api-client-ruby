=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # APM resource stat name.
  class FormulaAndFunctionApmResourceStatName
    ERRORS = "errors".freeze
    ERROR_RATE = "error_rate".freeze
    HITS = "hits".freeze
    LATENCY_AVG = "latency_avg".freeze
    LATENCY_MAX = "latency_max".freeze
    LATENCY_P50 = "latency_p50".freeze
    LATENCY_P75 = "latency_p75".freeze
    LATENCY_P90 = "latency_p90".freeze
    LATENCY_P95 = "latency_p95".freeze
    LATENCY_P99 = "latency_p99".freeze

    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    # @!visibility private
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    # @!visibility private
    def build_from_hash(value)
      constantValues = FormulaAndFunctionApmResourceStatName.constants.select { |c| FormulaAndFunctionApmResourceStatName::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V1::UnparsedObject.new(value) : value
    end
  end
end
