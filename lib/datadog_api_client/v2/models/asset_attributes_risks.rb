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
  # Asset risks.
  class AssetAttributesRisks
    include BaseGenericModel

    # Whether the asset has access to sensitive data or not.
    attr_accessor :has_access_to_sensitive_data

    # Whether the asset has privileged access or not.
    attr_accessor :has_privileged_access

    # Whether the asset is in production or not.
    attr_reader :in_production

    # Whether the asset is publicly accessible or not.
    attr_accessor :is_publicly_accessible

    # Whether the asset is under attack or not.
    attr_accessor :under_attack

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'has_access_to_sensitive_data' => :'has_access_to_sensitive_data',
        :'has_privileged_access' => :'has_privileged_access',
        :'in_production' => :'in_production',
        :'is_publicly_accessible' => :'is_publicly_accessible',
        :'under_attack' => :'under_attack'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'has_access_to_sensitive_data' => :'Boolean',
        :'has_privileged_access' => :'Boolean',
        :'in_production' => :'Boolean',
        :'is_publicly_accessible' => :'Boolean',
        :'under_attack' => :'Boolean'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::AssetAttributesRisks` initialize method"
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

      if attributes.key?(:'has_access_to_sensitive_data')
        self.has_access_to_sensitive_data = attributes[:'has_access_to_sensitive_data']
      end

      if attributes.key?(:'has_privileged_access')
        self.has_privileged_access = attributes[:'has_privileged_access']
      end

      if attributes.key?(:'in_production')
        self.in_production = attributes[:'in_production']
      end

      if attributes.key?(:'is_publicly_accessible')
        self.is_publicly_accessible = attributes[:'is_publicly_accessible']
      end

      if attributes.key?(:'under_attack')
        self.under_attack = attributes[:'under_attack']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @in_production.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param in_production [Object] Object to be assigned
    # @!visibility private
    def in_production=(in_production)
      if in_production.nil?
        fail ArgumentError, 'invalid value for "in_production", in_production cannot be nil.'
      end
      @in_production = in_production
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
          has_access_to_sensitive_data == o.has_access_to_sensitive_data &&
          has_privileged_access == o.has_privileged_access &&
          in_production == o.in_production &&
          is_publicly_accessible == o.is_publicly_accessible &&
          under_attack == o.under_attack &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [has_access_to_sensitive_data, has_privileged_access, in_production, is_publicly_accessible, under_attack, additional_properties].hash
    end
  end
end