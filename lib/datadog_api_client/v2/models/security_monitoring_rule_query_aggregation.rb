=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V2
  # The aggregation type.
  class SecurityMonitoringRuleQueryAggregation
    COUNT = "count".freeze
    CARDINALITY = "cardinality".freeze
    SUM = "sum".freeze
    MAX = "max".freeze
    NEW_VALUE = "new_value".freeze
    GEO_DATA = "geo_data".freeze

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
      constantValues = SecurityMonitoringRuleQueryAggregation.constants.select { |c| SecurityMonitoringRuleQueryAggregation::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V2::UnparsedObject.new(value) : value
    end
  end
end
