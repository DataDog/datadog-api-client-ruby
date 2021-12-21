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
  class MonitorType
    COMPOSITE = "composite".freeze
    EVENT_ALERT = "event alert".freeze
    LOG_ALERT = "log alert".freeze
    METRIC_ALERT = "metric alert".freeze
    PROCESS_ALERT = "process alert".freeze
    QUERY_ALERT = "query alert".freeze
    RUM_ALERT = "rum alert".freeze
    SERVICE_CHECK = "service check".freeze
    SYNTHETICS_ALERT = "synthetics alert".freeze
    TRACE_ANALYTICS_ALERT = "trace-analytics alert".freeze
    SLO_ALERT = "slo alert".freeze
    EVENT_V2_ALERT = "event-v2 alert".freeze
    AUDIT_ALERT = "audit alert".freeze
    CI_PIPELINES_ALERT = "ci-pipelines alert".freeze

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
      constantValues = MonitorType.constants.select { |c| MonitorType::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V1::UnparsedObject.new(value) : value
    end
  end
end
