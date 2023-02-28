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
  # Use the Arithmetic Processor to add a new attribute (without spaces or special characters
  # in the new attribute name) to a log with the result of the provided formula.
  # This enables you to remap different time attributes with different units into a single attribute,
  # or to compute operations on attributes within the same log.
  # 
  # The formula can use parentheses and the basic arithmetic operators `-`, `+`, `*`, `/`.
  # 
  # By default, the calculation is skipped if an attribute is missing.
  # Select “Replace missing attribute by 0” to automatically populate
  # missing attribute values with 0 to ensure that the calculation is done.
  # An attribute is missing if it is not found in the log attributes,
  # or if it cannot be converted to a number.
  # 
  # *Notes*:
  # 
  # - The operator `-` needs to be space split in the formula as it can also be contained in attribute names.
  # - If the target attribute already exists, it is overwritten by the result of the formula.
  # - Results are rounded up to the 9th decimal. For example, if the result of the formula is `0.1234567891`,
  #   the actual value stored for the attribute is `0.123456789`.
  # - If you need to scale a unit of measure,
  #   see [Scale Filter](https://docs.datadoghq.com/logs/log_configuration/parsing/?tab=filter#matcher-and-filter).
  class LogsArithmeticProcessor
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Arithmetic operation between one or more log attributes.
    attr_reader :expression

    # Whether or not the processor is enabled.
    attr_accessor :is_enabled

    # If `true`, it replaces all missing attributes of expression by `0`, `false`
    # skip the operation if an attribute is missing.
    attr_accessor :is_replace_missing

    # Name of the processor.
    attr_accessor :name

    # Name of the attribute that contains the result of the arithmetic operation.
    attr_reader :target

    # Type of logs arithmetic processor.
    attr_reader :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'expression' => :'expression',
        :'is_enabled' => :'is_enabled',
        :'is_replace_missing' => :'is_replace_missing',
        :'name' => :'name',
        :'target' => :'target',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'expression' => :'String',
        :'is_enabled' => :'Boolean',
        :'is_replace_missing' => :'Boolean',
        :'name' => :'String',
        :'target' => :'String',
        :'type' => :'LogsArithmeticProcessorType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsArithmeticProcessor` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogsArithmeticProcessor`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'expression')
        self.expression = attributes[:'expression']
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'is_replace_missing')
        self.is_replace_missing = attributes[:'is_replace_missing']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @expression.nil?
      return false if @target.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param expression [Object] Object to be assigned
    # @!visibility private
    def expression=(expression)
      if expression.nil?
        fail ArgumentError, 'invalid value for "expression", expression cannot be nil.'
      end
      @expression = expression
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

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          expression == o.expression &&
          is_enabled == o.is_enabled &&
          is_replace_missing == o.is_replace_missing &&
          name == o.name &&
          target == o.target &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:expression, :is_enabled, :is_replace_missing, :name, :target, :type].hash
    end
  end
end
