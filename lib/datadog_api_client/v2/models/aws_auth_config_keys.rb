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
  # AWS Authentication config to integrate your account using an access key pair.
  class AWSAuthConfigKeys
    include BaseGenericModel

    # AWS Access Key ID.
    attr_reader :access_key_id

    # AWS Secret Access Key.
    attr_reader :secret_access_key

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'access_key_id' => :'access_key_id',
        :'secret_access_key' => :'secret_access_key'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'access_key_id' => :'String',
        :'secret_access_key' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::AWSAuthConfigKeys` initialize method"
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

      if attributes.key?(:'access_key_id')
        self.access_key_id = attributes[:'access_key_id']
      end

      if attributes.key?(:'secret_access_key')
        self.secret_access_key = attributes[:'secret_access_key']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @access_key_id.nil?
      return false if !@secret_access_key.nil? && @secret_access_key.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param access_key_id [Object] Object to be assigned
    # @!visibility private
    def access_key_id=(access_key_id)
      if access_key_id.nil?
        fail ArgumentError, 'invalid value for "access_key_id", access_key_id cannot be nil.'
      end
      @access_key_id = access_key_id
    end

    # Custom attribute writer method with validation
    # @param secret_access_key [Object] Object to be assigned
    # @!visibility private
    def secret_access_key=(secret_access_key)
      if !secret_access_key.nil? && secret_access_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "secret_access_key", the character length must be great than or equal to 1.'
      end
      @secret_access_key = secret_access_key
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
          access_key_id == o.access_key_id &&
          secret_access_key == o.secret_access_key &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [access_key_id, secret_access_key, additional_properties].hash
    end
  end
end
