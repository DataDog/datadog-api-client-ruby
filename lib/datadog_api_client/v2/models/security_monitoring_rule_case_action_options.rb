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
  # Options for the rule action
  class SecurityMonitoringRuleCaseActionOptions
    include BaseGenericModel

    # Duration of the action in seconds. 0 indicates no expiration.
    attr_reader :duration

    # Used with the case action of type 'flag_ip'. The value specified in this field is applied as a flag to the IP addresses.
    attr_accessor :flagged_ip_type

    # Used with the case action of type 'user_behavior'. The value specified in this field is applied as a risk tag to all users affected by the rule.
    attr_accessor :user_behavior_name

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'duration' => :'duration',
        :'flagged_ip_type' => :'flaggedIPType',
        :'user_behavior_name' => :'userBehaviorName'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'duration' => :'Integer',
        :'flagged_ip_type' => :'SecurityMonitoringRuleCaseActionOptionsFlaggedIPType',
        :'user_behavior_name' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringRuleCaseActionOptions` initialize method"
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

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'flagged_ip_type')
        self.flagged_ip_type = attributes[:'flagged_ip_type']
      end

      if attributes.key?(:'user_behavior_name')
        self.user_behavior_name = attributes[:'user_behavior_name']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@duration.nil? && @duration < 0
      true
    end

    # Custom attribute writer method with validation
    # @param duration [Object] Object to be assigned
    # @!visibility private
    def duration=(duration)
      if !duration.nil? && duration < 0
        fail ArgumentError, 'invalid value for "duration", must be greater than or equal to 0.'
      end
      @duration = duration
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
          duration == o.duration &&
          flagged_ip_type == o.flagged_ip_type &&
          user_behavior_name == o.user_behavior_name &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [duration, flagged_ip_type, user_behavior_name, additional_properties].hash
    end
  end
end
