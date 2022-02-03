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
  # A time window is specified to match when at least one of the cases matches true. This is a sliding window
  # and evaluates in real time.
  class SecurityMonitoringRuleEvaluationWindow
    ZERO_MINUTES = 0.freeze
    ONE_MINUTE = 60.freeze
    FIVE_MINUTES = 300.freeze
    TEN_MINUTES = 600.freeze
    FIFTEEN_MINUTES = 900.freeze
    THIRTY_MINUTES = 1800.freeze
    ONE_HOUR = 3600.freeze
    TWO_HOURS = 7200.freeze

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
      constantValues = SecurityMonitoringRuleEvaluationWindow.constants.select { |c| SecurityMonitoringRuleEvaluationWindow::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V2::UnparsedObject.new(value) : value
    end
  end
end