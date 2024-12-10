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
  # Policy and policy type for a monitor configuration policy.
  class MonitorConfigPolicyAttributeEditRequest
    include BaseGenericModel

    # Configuration for the policy.
    attr_reader :policy

    # The monitor configuration policy type.
    attr_reader :policy_type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'policy' => :'policy',
        :'policy_type' => :'policy_type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'policy' => :'MonitorConfigPolicyPolicy',
        :'policy_type' => :'MonitorConfigPolicyType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::MonitorConfigPolicyAttributeEditRequest` initialize method"
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

      if attributes.key?(:'policy')
        self.policy = attributes[:'policy']
      end

      if attributes.key?(:'policy_type')
        self.policy_type = attributes[:'policy_type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @policy.nil?
      return false if @policy_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param policy [Object] Object to be assigned
    # @!visibility private
    def policy=(policy)
      if policy.nil?
        fail ArgumentError, 'invalid value for "policy", policy cannot be nil.'
      end
      @policy = policy
    end

    # Custom attribute writer method with validation
    # @param policy_type [Object] Object to be assigned
    # @!visibility private
    def policy_type=(policy_type)
      if policy_type.nil?
        fail ArgumentError, 'invalid value for "policy_type", policy_type cannot be nil.'
      end
      @policy_type = policy_type
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
          policy == o.policy &&
          policy_type == o.policy_type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [policy, policy_type, additional_properties].hash
    end
  end
end
