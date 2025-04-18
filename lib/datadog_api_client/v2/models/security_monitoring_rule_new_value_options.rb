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
  # Options on new value detection method.
  class SecurityMonitoringRuleNewValueOptions
    include BaseGenericModel

    # The duration in days after which a learned value is forgotten.
    attr_accessor :forget_after

    # The duration in days during which values are learned, and after which signals will be generated for values that
    # weren't learned. If set to 0, a signal will be generated for all new values after the first value is learned.
    attr_accessor :learning_duration

    # The learning method used to determine when signals should be generated for values that weren't learned.
    attr_accessor :learning_method

    # A number of occurrences after which signals will be generated for values that weren't learned.
    attr_accessor :learning_threshold

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'forget_after' => :'forgetAfter',
        :'learning_duration' => :'learningDuration',
        :'learning_method' => :'learningMethod',
        :'learning_threshold' => :'learningThreshold'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'forget_after' => :'SecurityMonitoringRuleNewValueOptionsForgetAfter',
        :'learning_duration' => :'SecurityMonitoringRuleNewValueOptionsLearningDuration',
        :'learning_method' => :'SecurityMonitoringRuleNewValueOptionsLearningMethod',
        :'learning_threshold' => :'SecurityMonitoringRuleNewValueOptionsLearningThreshold'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptions` initialize method"
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

      if attributes.key?(:'forget_after')
        self.forget_after = attributes[:'forget_after']
      end

      if attributes.key?(:'learning_duration')
        self.learning_duration = attributes[:'learning_duration']
      end

      if attributes.key?(:'learning_method')
        self.learning_method = attributes[:'learning_method']
      end

      if attributes.key?(:'learning_threshold')
        self.learning_threshold = attributes[:'learning_threshold']
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
          forget_after == o.forget_after &&
          learning_duration == o.learning_duration &&
          learning_method == o.learning_method &&
          learning_threshold == o.learning_threshold &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [forget_after, learning_duration, learning_method, learning_threshold, additional_properties].hash
    end
  end
end
