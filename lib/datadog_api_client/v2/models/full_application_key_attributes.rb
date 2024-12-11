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
  # Attributes of a full application key.
  class FullApplicationKeyAttributes
    include BaseGenericModel

    # Creation date of the application key.
    attr_accessor :created_at

    # The application key.
    attr_accessor :key

    # The last four characters of the application key.
    attr_reader :last4

    # Name of the application key.
    attr_accessor :name

    # Array of scopes to grant the application key.
    attr_accessor :scopes

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'key' => :'key',
        :'last4' => :'last4',
        :'name' => :'name',
        :'scopes' => :'scopes'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created_at' => :'Time',
        :'key' => :'String',
        :'last4' => :'String',
        :'name' => :'String',
        :'scopes' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'scopes',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::FullApplicationKeyAttributes` initialize method"
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

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'last4')
        self.last4 = attributes[:'last4']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'scopes')
        if (value = attributes[:'scopes']).is_a?(Array)
          self.scopes = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@last4.nil? && @last4.to_s.length > 4
      return false if !@last4.nil? && @last4.to_s.length < 4
      true
    end

    # Custom attribute writer method with validation
    # @param last4 [Object] Object to be assigned
    # @!visibility private
    def last4=(last4)
      if !last4.nil? && last4.to_s.length > 4
        fail ArgumentError, 'invalid value for "last4", the character length must be smaller than or equal to 4.'
      end
      if !last4.nil? && last4.to_s.length < 4
        fail ArgumentError, 'invalid value for "last4", the character length must be great than or equal to 4.'
      end
      @last4 = last4
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
          created_at == o.created_at &&
          key == o.key &&
          last4 == o.last4 &&
          name == o.name &&
          scopes == o.scopes &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [created_at, key, last4, name, scopes, additional_properties].hash
    end
  end
end
