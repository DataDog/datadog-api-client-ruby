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
  # The definition of `InputSchemaDataAttributesParametersItemsDataAttributes` object.
  class InputSchemaDataAttributesParametersItemsDataAttributes
    include BaseGenericModel

    # The `attributes` `defaultValue`.
    attr_accessor :default_value

    # The `attributes` `description`.
    attr_accessor :description

    # The `attributes` `enum`.
    attr_accessor :enum

    # The `attributes` `label`.
    attr_accessor :label

    # The `attributes` `name`.
    attr_accessor :name

    # The `attributes` `type`.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'default_value' => :'defaultValue',
        :'description' => :'description',
        :'enum' => :'enum',
        :'label' => :'label',
        :'name' => :'name',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'default_value' => :'Object',
        :'description' => :'String',
        :'enum' => :'Array<String>',
        :'label' => :'String',
        :'name' => :'String',
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::InputSchemaDataAttributesParametersItemsDataAttributes` initialize method"
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

      if attributes.key?(:'default_value')
        self.default_value = attributes[:'default_value']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'enum')
        if (value = attributes[:'enum']).is_a?(Array)
          self.enum = value
        end
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
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
          default_value == o.default_value &&
          description == o.description &&
          enum == o.enum &&
          label == o.label &&
          name == o.name &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [default_value, description, enum, label, name, type, additional_properties].hash
    end
  end
end
