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
  # Compute options.
  class FormulaAndFunctionEventQueryDefinitionCompute
    include BaseGenericModel

    # Aggregation methods for event platform queries.
    attr_reader :aggregation

    # A time interval in milliseconds.
    attr_accessor :interval

    # Measurable attribute to compute.
    attr_accessor :metric

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregation' => :'aggregation',
        :'interval' => :'interval',
        :'metric' => :'metric'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggregation' => :'FormulaAndFunctionEventAggregation',
        :'interval' => :'Integer',
        :'metric' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aggregation')
        self.aggregation = attributes[:'aggregation']
      end

      if attributes.key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.key?(:'metric')
        self.metric = attributes[:'metric']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @aggregation.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param aggregation [Object] Object to be assigned
    # @!visibility private
    def aggregation=(aggregation)
      if aggregation.nil?
        fail ArgumentError, 'invalid value for "aggregation", aggregation cannot be nil.'
      end
      @aggregation = aggregation
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregation == o.aggregation &&
          interval == o.interval &&
          metric == o.metric
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aggregation, interval, metric].hash
    end
  end
end
