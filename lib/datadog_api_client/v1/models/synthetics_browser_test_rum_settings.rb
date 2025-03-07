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
  # The RUM data collection settings for the Synthetic browser test.
  # **Note:** There are 3 ways to format RUM settings:
  # 
  # `{ isEnabled: false }`
  # RUM data is not collected.
  # 
  # `{ isEnabled: true }`
  # RUM data is collected from the Synthetic test's default application.
  # 
  # `{ isEnabled: true, applicationId: "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx", clientTokenId: 12345 }`
  # RUM data is collected using the specified application.
  class SyntheticsBrowserTestRumSettings
    include BaseGenericModel

    # RUM application ID used to collect RUM data for the browser test.
    attr_accessor :application_id

    # RUM application API key ID used to collect RUM data for the browser test.
    attr_accessor :client_token_id

    # Determines whether RUM data is collected during test runs.
    attr_reader :is_enabled

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'application_id' => :'applicationId',
        :'client_token_id' => :'clientTokenId',
        :'is_enabled' => :'isEnabled'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'application_id' => :'String',
        :'client_token_id' => :'Integer',
        :'is_enabled' => :'Boolean'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsBrowserTestRumSettings` initialize method"
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

      if attributes.key?(:'application_id')
        self.application_id = attributes[:'application_id']
      end

      if attributes.key?(:'client_token_id')
        self.client_token_id = attributes[:'client_token_id']
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @is_enabled.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param is_enabled [Object] Object to be assigned
    # @!visibility private
    def is_enabled=(is_enabled)
      if is_enabled.nil?
        fail ArgumentError, 'invalid value for "is_enabled", is_enabled cannot be nil.'
      end
      @is_enabled = is_enabled
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
          application_id == o.application_id &&
          client_token_id == o.client_token_id &&
          is_enabled == o.is_enabled &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [application_id, client_token_id, is_enabled, additional_properties].hash
    end
  end
end
