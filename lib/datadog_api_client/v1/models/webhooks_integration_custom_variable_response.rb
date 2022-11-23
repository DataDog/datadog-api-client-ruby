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
  # Custom variable for Webhook integration.
  class WebhooksIntegrationCustomVariableResponse
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Make custom variable is secret or not.
    # If the custom variable is secret, the value is not returned in the response payload.
    attr_reader :is_secret

    # The name of the variable. It corresponds with `<CUSTOM_VARIABLE_NAME>`. It must only contains upper-case characters, integers or underscores.
    attr_reader :name

    # Value of the custom variable. It won't be returned if the variable is secret.
    attr_accessor :value

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'is_secret' => :'is_secret',
        :'name' => :'name',
        :'value' => :'value'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'is_secret' => :'Boolean',
        :'name' => :'String',
        :'value' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::WebhooksIntegrationCustomVariableResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::WebhooksIntegrationCustomVariableResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_secret')
        self.is_secret = attributes[:'is_secret']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @is_secret.nil?
      return false if @name.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param is_secret [Object] Object to be assigned
    # @!visibility private
    def is_secret=(is_secret)
      if is_secret.nil?
        fail ArgumentError, 'invalid value for "is_secret", is_secret cannot be nil.'
      end
      @is_secret = is_secret
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

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_secret == o.is_secret &&
          name == o.name &&
          value == o.value
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [is_secret, name, value].hash
    end
  end
end
