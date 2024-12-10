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
  # Attributes object for creating a Cloudflare account.
  class CloudflareAccountCreateRequestAttributes
    include BaseGenericModel

    # The API key (or token) for the Cloudflare account.
    attr_reader :api_key

    # The email associated with the Cloudflare account. If an API key is provided (and not a token), this field is also required.
    attr_accessor :email

    # The name of the Cloudflare account.
    attr_reader :name

    # An allowlist of resources to restrict pulling metrics for including `'web', 'dns', 'lb' (load balancer), 'worker'`.
    attr_accessor :resources

    # An allowlist of zones to restrict pulling metrics for.
    attr_accessor :zones

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'api_key' => :'api_key',
        :'email' => :'email',
        :'name' => :'name',
        :'resources' => :'resources',
        :'zones' => :'zones'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'api_key' => :'String',
        :'email' => :'String',
        :'name' => :'String',
        :'resources' => :'Array<String>',
        :'zones' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CloudflareAccountCreateRequestAttributes` initialize method"
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

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'resources')
        if (value = attributes[:'resources']).is_a?(Array)
          self.resources = value
        end
      end

      if attributes.key?(:'zones')
        if (value = attributes[:'zones']).is_a?(Array)
          self.zones = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @api_key.nil?
      return false if @name.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param api_key [Object] Object to be assigned
    # @!visibility private
    def api_key=(api_key)
      if api_key.nil?
        fail ArgumentError, 'invalid value for "api_key", api_key cannot be nil.'
      end
      @api_key = api_key
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
          email == o.email &&
          name == o.name &&
          resources == o.resources &&
          zones == o.zones &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [api_key, email, name, resources, zones, additional_properties].hash
    end
  end
end
