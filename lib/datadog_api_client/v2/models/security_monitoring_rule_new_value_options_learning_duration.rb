=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  # The duration in days during which values are learned, and after which signals will be generated for values that
  # weren't learned. If set to 0, a signal will be generated for all new values after the first value is learned.
  class SecurityMonitoringRuleNewValueOptionsLearningDuration
    ZERO_DAYS = 0.freeze
    ONE_DAY = 1.freeze
    SEVEN_DAYS = 7.freeze

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
      constantValues = SecurityMonitoringRuleNewValueOptionsLearningDuration.constants.select { |c| SecurityMonitoringRuleNewValueOptionsLearningDuration::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V2::UnparsedObject.new(value) : value
    end
  end
end