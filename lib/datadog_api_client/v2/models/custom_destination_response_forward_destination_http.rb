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
  # The HTTP destination.
  class CustomDestinationResponseForwardDestinationHttp
    include BaseGenericModel

    # Authentication method of the HTTP requests.
    attr_reader :auth

    # The destination for which logs will be forwarded to.
    # Must have HTTPS scheme and forwarding back to Datadog is not allowed.
    attr_reader :endpoint

    # Type of the HTTP destination.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'auth' => :'auth',
        :'endpoint' => :'endpoint',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'auth' => :'CustomDestinationResponseHttpDestinationAuth',
        :'endpoint' => :'String',
        :'type' => :'CustomDestinationResponseForwardDestinationHttpType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CustomDestinationResponseForwardDestinationHttp` initialize method"
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

      if attributes.key?(:'auth')
        self.auth = attributes[:'auth']
      end

      if attributes.key?(:'endpoint')
        self.endpoint = attributes[:'endpoint']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @auth.nil?
      return false if @endpoint.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param auth [Object] Object to be assigned
    # @!visibility private
    def auth=(auth)
      if auth.nil?
        fail ArgumentError, 'invalid value for "auth", auth cannot be nil.'
      end
      @auth = auth
    end

    # Custom attribute writer method with validation
    # @param endpoint [Object] Object to be assigned
    # @!visibility private
    def endpoint=(endpoint)
      if endpoint.nil?
        fail ArgumentError, 'invalid value for "endpoint", endpoint cannot be nil.'
      end
      @endpoint = endpoint
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
          auth == o.auth &&
          endpoint == o.endpoint &&
          type == o.type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [auth, endpoint, type].hash
    end
  end
end
