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
  # The time-slice condition, composed of 3 parts: 1. the metric timeseries query, 2. the comparator,
  # and 3. the threshold. Optionally, a fourth part, the query interval, can be provided.
  class SLOTimeSliceCondition
    include BaseGenericModel

    # The comparator used to compare the SLI value to the threshold.
    attr_reader :comparator

    # The queries and formula used to calculate the SLI value.
    attr_reader :query

    # The interval used when querying data, which defines the size of a time slice.
    # Two values are allowed: 60 (1 minute) and 300 (5 minutes).
    # If not provided, the value defaults to 300 (5 minutes).
    attr_accessor :query_interval_seconds

    # The threshold value to which each SLI value will be compared.
    attr_reader :threshold

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'comparator' => :'comparator',
        :'query' => :'query',
        :'query_interval_seconds' => :'query_interval_seconds',
        :'threshold' => :'threshold'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'comparator' => :'SLOTimeSliceComparator',
        :'query' => :'SLOTimeSliceQuery',
        :'query_interval_seconds' => :'SLOTimeSliceInterval',
        :'threshold' => :'Float'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOTimeSliceCondition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOTimeSliceCondition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'comparator')
        self.comparator = attributes[:'comparator']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'query_interval_seconds')
        self.query_interval_seconds = attributes[:'query_interval_seconds']
      end

      if attributes.key?(:'threshold')
        self.threshold = attributes[:'threshold']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @comparator.nil?
      return false if @query.nil?
      return false if @threshold.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param comparator [Object] Object to be assigned
    # @!visibility private
    def comparator=(comparator)
      if comparator.nil?
        fail ArgumentError, 'invalid value for "comparator", comparator cannot be nil.'
      end
      @comparator = comparator
    end

    # Custom attribute writer method with validation
    # @param query [Object] Object to be assigned
    # @!visibility private
    def query=(query)
      if query.nil?
        fail ArgumentError, 'invalid value for "query", query cannot be nil.'
      end
      @query = query
    end

    # Custom attribute writer method with validation
    # @param threshold [Object] Object to be assigned
    # @!visibility private
    def threshold=(threshold)
      if threshold.nil?
        fail ArgumentError, 'invalid value for "threshold", threshold cannot be nil.'
      end
      @threshold = threshold
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          comparator == o.comparator &&
          query == o.query &&
          query_interval_seconds == o.query_interval_seconds &&
          threshold == o.threshold
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [comparator, query, query_interval_seconds, threshold].hash
    end
  end
end
