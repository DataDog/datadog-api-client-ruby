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
  # A representation of `metric` based SLO time series for the provided queries.
  # This is the same response type from `batch_query` endpoint.
  class SLOHistoryMetricsSeries
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Count of submitted metrics.
    attr_reader :count

    # Query metadata.
    attr_accessor :metadata

    # Total sum of the query.
    attr_reader :sum

    # The query values for each metric.
    attr_reader :values

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'count' => :'count',
        :'metadata' => :'metadata',
        :'sum' => :'sum',
        :'values' => :'values'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'count' => :'Integer',
        :'metadata' => :'SLOHistoryMetricsSeriesMetadata',
        :'sum' => :'Float',
        :'values' => :'Array<Float>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOHistoryMetricsSeries` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOHistoryMetricsSeries`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'sum')
        self.sum = attributes[:'sum']
      end

      if attributes.key?(:'values')
        if (value = attributes[:'values']).is_a?(Array)
          self.values = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @count.nil?
      return false if @sum.nil?
      return false if @values.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param count [Object] Object to be assigned
    # @!visibility private
    def count=(count)
      if count.nil?
        fail ArgumentError, 'invalid value for "count", count cannot be nil.'
      end
      @count = count
    end

    # Custom attribute writer method with validation
    # @param sum [Object] Object to be assigned
    # @!visibility private
    def sum=(sum)
      if sum.nil?
        fail ArgumentError, 'invalid value for "sum", sum cannot be nil.'
      end
      @sum = sum
    end

    # Custom attribute writer method with validation
    # @param values [Object] Object to be assigned
    # @!visibility private
    def values=(values)
      if values.nil?
        fail ArgumentError, 'invalid value for "values", values cannot be nil.'
      end
      @values = values
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          count == o.count &&
          metadata == o.metadata &&
          sum == o.sum &&
          values == o.values
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:count, :metadata, :sum, :values].hash
    end
  end
end
