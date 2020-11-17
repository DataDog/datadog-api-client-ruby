=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  class UsageSort
    COMPUTED_ON = "computed_on".freeze
    SIZE = "size".freeze
    START_DATE = "start_date".freeze
    END_DATE = "end_date".freeze

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
      constantValues = UsageSort.constants.select { |c| UsageSort::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #UsageSort" if constantValues.empty?
      value
    end
  end
end
