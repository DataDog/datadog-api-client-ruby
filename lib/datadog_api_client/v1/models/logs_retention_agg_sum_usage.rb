=begin
#Datadog API V1 Collection

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

module DatadogAPIClient::V1
  # Object containing indexed logs usage aggregated across organizations and months for a retention period.
  class LogsRetentionAggSumUsage
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Total indexed logs for this retention period.
    attr_accessor :logs_indexed_logs_usage_agg_sum

    # Live indexed logs for this retention period.
    attr_accessor :logs_live_indexed_logs_usage_agg_sum

    # Rehydrated indexed logs for this retention period.
    attr_accessor :logs_rehydrated_indexed_logs_usage_agg_sum

    # The retention period in days or "custom" for all custom retention periods.
    attr_accessor :retention

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'logs_indexed_logs_usage_agg_sum' => :'logs_indexed_logs_usage_agg_sum',
        :'logs_live_indexed_logs_usage_agg_sum' => :'logs_live_indexed_logs_usage_agg_sum',
        :'logs_rehydrated_indexed_logs_usage_agg_sum' => :'logs_rehydrated_indexed_logs_usage_agg_sum',
        :'retention' => :'retention'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'logs_indexed_logs_usage_agg_sum' => :'Integer',
        :'logs_live_indexed_logs_usage_agg_sum' => :'Integer',
        :'logs_rehydrated_indexed_logs_usage_agg_sum' => :'Integer',
        :'retention' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsRetentionAggSumUsage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogsRetentionAggSumUsage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'logs_indexed_logs_usage_agg_sum')
        self.logs_indexed_logs_usage_agg_sum = attributes[:'logs_indexed_logs_usage_agg_sum']
      end

      if attributes.key?(:'logs_live_indexed_logs_usage_agg_sum')
        self.logs_live_indexed_logs_usage_agg_sum = attributes[:'logs_live_indexed_logs_usage_agg_sum']
      end

      if attributes.key?(:'logs_rehydrated_indexed_logs_usage_agg_sum')
        self.logs_rehydrated_indexed_logs_usage_agg_sum = attributes[:'logs_rehydrated_indexed_logs_usage_agg_sum']
      end

      if attributes.key?(:'retention')
        self.retention = attributes[:'retention']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          logs_indexed_logs_usage_agg_sum == o.logs_indexed_logs_usage_agg_sum &&
          logs_live_indexed_logs_usage_agg_sum == o.logs_live_indexed_logs_usage_agg_sum &&
          logs_rehydrated_indexed_logs_usage_agg_sum == o.logs_rehydrated_indexed_logs_usage_agg_sum &&
          retention == o.retention
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:logs_indexed_logs_usage_agg_sum, :logs_live_indexed_logs_usage_agg_sum, :logs_rehydrated_indexed_logs_usage_agg_sum, :retention].hash
    end
  end
end
