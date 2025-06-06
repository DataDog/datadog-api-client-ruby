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
  # An assertion which uses a simple target.
  class SyntheticsAssertionTarget
    include BaseGenericModel

    # Assertion operator to apply.
    attr_reader :operator

    # The associated assertion property.
    attr_accessor :property

    # Value used by the operator in assertions. Can be either a number or string.
    attr_reader :target

    # Timings scope for response time assertions.
    attr_accessor :timings_scope

    # Type of the assertion.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'operator' => :'operator',
        :'property' => :'property',
        :'target' => :'target',
        :'timings_scope' => :'timingsScope',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'operator' => :'SyntheticsAssertionOperator',
        :'property' => :'String',
        :'target' => :'SyntheticsAssertionTargetValue',
        :'timings_scope' => :'SyntheticsAssertionTimingsScope',
        :'type' => :'SyntheticsAssertionType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsAssertionTarget` initialize method"
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

      if attributes.key?(:'operator')
        self.operator = attributes[:'operator']
      end

      if attributes.key?(:'property')
        self.property = attributes[:'property']
      end

      if attributes.key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.key?(:'timings_scope')
        self.timings_scope = attributes[:'timings_scope']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @operator.nil?
      return false if @target.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param operator [Object] Object to be assigned
    # @!visibility private
    def operator=(operator)
      if operator.nil?
        fail ArgumentError, 'invalid value for "operator", operator cannot be nil.'
      end
      @operator = operator
    end

    # Custom attribute writer method with validation
    # @param target [Object] Object to be assigned
    # @!visibility private
    def target=(target)
      if target.nil?
        fail ArgumentError, 'invalid value for "target", target cannot be nil.'
      end
      @target = target
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
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
          operator == o.operator &&
          property == o.property &&
          target == o.target &&
          timings_scope == o.timings_scope &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [operator, property, target, timings_scope, type, additional_properties].hash
    end
  end
end
