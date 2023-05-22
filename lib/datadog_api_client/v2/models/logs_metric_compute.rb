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
  # The compute rule to compute the log-based metric.
  class LogsMetricCompute
    include BaseGenericModel

    # The type of aggregation to use.
    attr_reader :aggregation_type

    # Toggle to include or exclude percentile aggregations for distribution metrics.
    # Only present when the `aggregation_type` is `distribution`.
    attr_accessor :include_percentiles

    # The path to the value the log-based metric will aggregate on (only used if the aggregation type is a "distribution").
    attr_accessor :path

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregation_type' => :'aggregation_type',
        :'include_percentiles' => :'include_percentiles',
        :'path' => :'path'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggregation_type' => :'LogsMetricComputeAggregationType',
        :'include_percentiles' => :'Boolean',
        :'path' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::LogsMetricCompute` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::LogsMetricCompute`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aggregation_type')
        self.aggregation_type = attributes[:'aggregation_type']
      end

      if attributes.key?(:'include_percentiles')
        self.include_percentiles = attributes[:'include_percentiles']
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @aggregation_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param aggregation_type [Object] Object to be assigned
    # @!visibility private
    def aggregation_type=(aggregation_type)
      if aggregation_type.nil?
        fail ArgumentError, 'invalid value for "aggregation_type", aggregation_type cannot be nil.'
      end
      @aggregation_type = aggregation_type
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregation_type == o.aggregation_type &&
          include_percentiles == o.include_percentiles &&
          path == o.path
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aggregation_type, include_percentiles, path].hash
    end
  end
end
