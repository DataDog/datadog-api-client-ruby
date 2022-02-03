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
  # Comparator to apply.
  class WidgetComparator
    GREATER_THAN = ">".freeze
    GREATER_THAN_OR_EQUAL_TO = ">=".freeze
    LESS_THAN = "<".freeze
    LESS_THAN_OR_EQUAL_TO = "<=".freeze

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
      constantValues = WidgetComparator.constants.select { |c| WidgetComparator::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V1::UnparsedObject.new(value) : value
    end
  end
end