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
  # Attributes object for an Okta account.
  class OktaAccountAttributes
    include BaseGenericModel

    # The API key of the Okta account.
    attr_accessor :api_key

    # The authorization method for an Okta account.
    attr_reader :auth_method

    # The Client ID of an Okta app integration.
    attr_accessor :client_id

    # The client secret of an Okta app integration.
    attr_accessor :client_secret

    # The domain of the Okta account.
    attr_reader :domain

    # The name of the Okta account.
    attr_reader :name

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'api_key' => :'api_key',
        :'auth_method' => :'auth_method',
        :'client_id' => :'client_id',
        :'client_secret' => :'client_secret',
        :'domain' => :'domain',
        :'name' => :'name'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'api_key' => :'String',
        :'auth_method' => :'String',
        :'client_id' => :'String',
        :'client_secret' => :'String',
        :'domain' => :'String',
        :'name' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::OktaAccountAttributes` initialize method"
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

      if attributes.key?(:'api_key')
        self.api_key = attributes[:'api_key']
      end

      if attributes.key?(:'auth_method')
        self.auth_method = attributes[:'auth_method']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'client_secret')
        self.client_secret = attributes[:'client_secret']
      end

      if attributes.key?(:'domain')
        self.domain = attributes[:'domain']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @auth_method.nil?
      return false if @domain.nil?
      return false if @name.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param auth_method [Object] Object to be assigned
    # @!visibility private
    def auth_method=(auth_method)
      if auth_method.nil?
        fail ArgumentError, 'invalid value for "auth_method", auth_method cannot be nil.'
      end
      @auth_method = auth_method
    end

    # Custom attribute writer method with validation
    # @param domain [Object] Object to be assigned
    # @!visibility private
    def domain=(domain)
      if domain.nil?
        fail ArgumentError, 'invalid value for "domain", domain cannot be nil.'
      end
      @domain = domain
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
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
          api_key == o.api_key &&
          auth_method == o.auth_method &&
          client_id == o.client_id &&
          client_secret == o.client_secret &&
          domain == o.domain &&
          name == o.name
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [api_key, auth_method, client_id, client_secret, domain, name].hash
    end
  end
end
