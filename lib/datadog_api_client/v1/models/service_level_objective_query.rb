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
  # A metric-based SLO. **Required if type is `metric`**. Note that Datadog only allows the sum by aggregator
  # to be used because this will sum up all request counts instead of averaging them, or taking the max or
  # min of all of those requests.
  class ServiceLevelObjectiveQuery
    include BaseGenericModel

    # A Datadog metric query for total (valid) events.
    attr_reader :denominator

    # A Datadog metric query for good events.
    attr_reader :numerator

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'denominator' => :'denominator',
        :'numerator' => :'numerator'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'denominator' => :'String',
        :'numerator' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ServiceLevelObjectiveQuery` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'denominator')
        self.denominator = attributes[:'denominator']
      end

      if attributes.key?(:'numerator')
        self.numerator = attributes[:'numerator']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @denominator.nil?
      return false if @numerator.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param denominator [Object] Object to be assigned
    # @!visibility private
    def denominator=(denominator)
      if denominator.nil?
        fail ArgumentError, 'invalid value for "denominator", denominator cannot be nil.'
      end
      @denominator = denominator
    end

    # Custom attribute writer method with validation
    # @param numerator [Object] Object to be assigned
    # @!visibility private
    def numerator=(numerator)
      if numerator.nil?
        fail ArgumentError, 'invalid value for "numerator", numerator cannot be nil.'
      end
      @numerator = numerator
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          denominator == o.denominator &&
          numerator == o.numerator &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [denominator, numerator, additional_properties].hash
    end
  end
end
