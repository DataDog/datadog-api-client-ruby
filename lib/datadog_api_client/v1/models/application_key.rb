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
  # An application key with its associated metadata.
  class ApplicationKey
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Hash of an application key.
    attr_reader :hash

    # Name of an application key.
    attr_accessor :name

    # Owner of an application key.
    attr_accessor :owner

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'hash' => :'hash',
        :'name' => :'name',
        :'owner' => :'owner'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'hash' => :'String',
        :'name' => :'String',
        :'owner' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ApplicationKey` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ApplicationKey`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'hash')
        self.hash = attributes[:'hash']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'owner')
        self.owner = attributes[:'owner']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@hash.nil? && @hash.to_s.length > 40
      return false if !@hash.nil? && @hash.to_s.length < 40
      true
    end

    # Custom attribute writer method with validation
    # @param hash [Object] Object to be assigned
    # @!visibility private
    def hash=(hash)
      if !hash.nil? && hash.to_s.length > 40
        fail ArgumentError, 'invalid value for "hash", the character length must be smaller than or equal to 40.'
      end
      if !hash.nil? && hash.to_s.length < 40
        fail ArgumentError, 'invalid value for "hash", the character length must be great than or equal to 40.'
      end
      @hash = hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          hash == o.hash &&
          name == o.name &&
          owner == o.owner
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:hash, :name, :owner].hash
    end
  end
end
