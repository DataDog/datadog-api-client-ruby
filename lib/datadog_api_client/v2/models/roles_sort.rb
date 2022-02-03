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
  # Sorting options for roles.
  class RolesSort
    NAME_ASCENDING = "name".freeze
    NAME_DESCENDING = "-name".freeze
    MODIFIED_AT_ASCENDING = "modified_at".freeze
    MODIFIED_AT_DESCENDING = "-modified_at".freeze
    USER_COUNT_ASCENDING = "user_count".freeze
    USER_COUNT_DESCENDING = "-user_count".freeze

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
      constantValues = RolesSort.constants.select { |c| RolesSort::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V2::UnparsedObject.new(value) : value
    end
  end
end