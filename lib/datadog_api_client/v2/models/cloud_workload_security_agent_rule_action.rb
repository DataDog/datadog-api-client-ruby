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
  # The action the rule can perform if triggered
  class CloudWorkloadSecurityAgentRuleAction
    include BaseGenericModel

    # SECL expression used to target the container to apply the action on
    attr_accessor :filter

    # An empty object indicating the hash action
    attr_accessor :_hash

    # Kill system call applied on the container matching the rule
    attr_accessor :kill

    # The metadata action applied on the scope matching the rule
    attr_accessor :metadata

    # The set action applied on the scope matching the rule
    attr_accessor :set

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'filter' => :'filter',
        :'_hash' => :'hash',
        :'kill' => :'kill',
        :'metadata' => :'metadata',
        :'set' => :'set'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'filter' => :'String',
        :'_hash' => :'Hash<String, Object>',
        :'kill' => :'CloudWorkloadSecurityAgentRuleKill',
        :'metadata' => :'CloudWorkloadSecurityAgentRuleActionMetadata',
        :'set' => :'CloudWorkloadSecurityAgentRuleActionSet'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleAction` initialize method"
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

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'_hash')
        self._hash = attributes[:'_hash']
      end

      if attributes.key?(:'kill')
        self.kill = attributes[:'kill']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'set')
        self.set = attributes[:'set']
      end
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
          filter == o.filter &&
          _hash == o._hash &&
          kill == o.kill &&
          metadata == o.metadata &&
          set == o.set &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [filter, _hash, kill, metadata, set, additional_properties].hash
    end
  end
end
