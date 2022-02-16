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
  # Supported products for hourly usage attribution requests.
  class HourlyUsageAttributionUsageType
    API_USAGE = "api_usage".freeze
    APM_HOST_USAGE = "apm_host_usage".freeze
    BROWSER_USAGE = "browser_usage".freeze
    CONTAINER_USAGE = "container_usage".freeze
    CUSTOM_TIMESERIES_USAGE = "custom_timeseries_usage".freeze
    ESTIMATED_INDEXED_LOGS_USAGE = "estimated_indexed_logs_usage".freeze
    FARGATE_USAGE = "fargate_usage".freeze
    FUNCTIONS_USAGE = "functions_usage".freeze
    INDEXED_LOGS_USAGE = "indexed_logs_usage".freeze
    INFRA_HOST_USAGE = "infra_host_usage".freeze
    INVOCATIONS_USAGE = "invocations_usage".freeze
    NPM_HOST_USAGE = "npm_host_usage".freeze
    PROFILED_CONTAINER_USAGE = "profiled_container_usage".freeze
    PROFILED_HOST_USAGE = "profiled_host_usage".freeze
    SNMP_USAGE = "snmp_usage".freeze

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
      constantValues = HourlyUsageAttributionUsageType.constants.select { |c| HourlyUsageAttributionUsageType::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V1::UnparsedObject.new(value) : value
    end
  end
end
