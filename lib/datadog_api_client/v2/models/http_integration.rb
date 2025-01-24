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
  # The definition of `HTTPIntegration` object.
  class HTTPIntegration
    include BaseGenericModel

    # Base HTTP url for the integration.
    attr_reader :base_url

    # The definition of `HTTPCredentials` object.
    attr_reader :credentials

    # The definition of `HTTPIntegrationType` object.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'base_url' => :'base_url',
        :'credentials' => :'credentials',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'base_url' => :'String',
        :'credentials' => :'HTTPCredentials',
        :'type' => :'HTTPIntegrationType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::HTTPIntegration` initialize method"
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

      if attributes.key?(:'base_url')
        self.base_url = attributes[:'base_url']
      end

      if attributes.key?(:'credentials')
        self.credentials = attributes[:'credentials']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @base_url.nil?
      pattern = Regexp.new(/url/)
      return false if @base_url !~ pattern
      return false if @credentials.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param base_url [Object] Object to be assigned
    # @!visibility private
    def base_url=(base_url)
      if base_url.nil?
        fail ArgumentError, 'invalid value for "base_url", base_url cannot be nil.'
      end
      pattern = Regexp.new(/url/)
      if base_url !~ pattern
        fail ArgumentError, "invalid value for \"base_url\", must conform to the pattern #{pattern}."
      end
      @base_url = base_url
    end

    # Custom attribute writer method with validation
    # @param credentials [Object] Object to be assigned
    # @!visibility private
    def credentials=(credentials)
      if credentials.nil?
        fail ArgumentError, 'invalid value for "credentials", credentials cannot be nil.'
      end
      @credentials = credentials
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
          base_url == o.base_url &&
          credentials == o.credentials &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [base_url, credentials, type, additional_properties].hash
    end
  end
end
