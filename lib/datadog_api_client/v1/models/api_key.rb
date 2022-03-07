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
  # Datadog API key.
  class ApiKey
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Date of creation of the API key.
    attr_accessor :created

    # Datadog user handle that created the API key.
    attr_accessor :created_by

    # API key.
    attr_accessor :key

    # Name of your API key.
    attr_accessor :name

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created' => :'created',
        :'created_by' => :'created_by',
        :'key' => :'key',
        :'name' => :'name'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created' => :'String',
        :'created_by' => :'String',
        :'key' => :'String',
        :'name' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ApiKey` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ApiKey`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if !@key.nil? && @key.to_s.length > 32
        invalid_properties.push('invalid value for "key", the character length must be smaller than or equal to 32.')
      end
      if !@key.nil? && @key.to_s.length < 32
        invalid_properties.push('invalid value for "key", the character length must be great than or equal to 32.')
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@key.nil? && @key.to_s.length > 32
      return false if !@key.nil? && @key.to_s.length < 32
      true
    end

    # Custom attribute writer method with validation
    # @param key [Object] Object to be assigned
    # @!visibility private
    def key=(key)
      if !key.nil? && key.to_s.length > 32
        fail ArgumentError, 'invalid value for "key", the character length must be smaller than or equal to 32.'
      end
      if !key.nil? && key.to_s.length < 32
        fail ArgumentError, 'invalid value for "key", the character length must be great than or equal to 32.'
      end
      @key = key
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          created_by == o.created_by &&
          key == o.key &&
          name == o.name
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [created, created_by, key, name].hash
    end
  end
end
