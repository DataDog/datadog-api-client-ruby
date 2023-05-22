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
  # Use the string builder processor to add a new attribute (without spaces or special characters)
  # to a log with the result of the provided template.
  # This enables aggregation of different attributes or raw strings into a single attribute.
  # 
  # The template is defined by both raw text and blocks with the syntax `%{attribute_path}`.
  # 
  # **Notes**:
  # 
  # - The processor only accepts attributes with values or an array of values in the blocks.
  # - If an attribute cannot be used (object or array of object),
  #   it is replaced by an empty string or the entire operation is skipped depending on your selection.
  # - If the target attribute already exists, it is overwritten by the result of the template.
  # - Results of the template cannot exceed 256 characters.
  class LogsStringBuilderProcessor
    include BaseGenericModel

    # Whether or not the processor is enabled.
    attr_accessor :is_enabled

    # If true, it replaces all missing attributes of `template` by an empty string.
    # If `false` (default), skips the operation for missing attributes.
    attr_accessor :is_replace_missing

    # Name of the processor.
    attr_accessor :name

    # The name of the attribute that contains the result of the template.
    attr_reader :target

    # A formula with one or more attributes and raw text.
    attr_reader :template

    # Type of logs string builder processor.
    attr_reader :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'is_enabled' => :'is_enabled',
        :'is_replace_missing' => :'is_replace_missing',
        :'name' => :'name',
        :'target' => :'target',
        :'template' => :'template',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'is_enabled' => :'Boolean',
        :'is_replace_missing' => :'Boolean',
        :'name' => :'String',
        :'target' => :'String',
        :'template' => :'String',
        :'type' => :'LogsStringBuilderProcessorType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsStringBuilderProcessor` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogsStringBuilderProcessor`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

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

      if attributes.key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @target.nil?
      return false if @template.nil?
      return false if @type.nil?
      true
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
    # @param template [Object] Object to be assigned
    # @!visibility private
    def template=(template)
      if template.nil?
        fail ArgumentError, 'invalid value for "template", template cannot be nil.'
      end
      @template = template
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
          is_enabled == o.is_enabled &&
          is_replace_missing == o.is_replace_missing &&
          name == o.name &&
          target == o.target &&
          template == o.template &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [is_enabled, is_replace_missing, name, target, template, type].hash
    end
  end
end
