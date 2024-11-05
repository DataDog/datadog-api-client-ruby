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
  # The steps used in a Synthetic browser test.
  class SyntheticsStep
    include BaseGenericModel

    # A boolean set to allow this step to fail.
    attr_accessor :allow_failure

    # A boolean set to always execute this step even if the previous step failed or was skipped.
    attr_accessor :always_execute

    # A boolean set to exit the test if the step succeeds.
    attr_accessor :exit_if_succeed

    # A boolean to use in addition to `allowFailure` to determine if the test should be marked as failed when the step fails.
    attr_accessor :is_critical

    # The name of the step.
    attr_accessor :name

    # A boolean set to skip taking a screenshot for the step.
    attr_accessor :no_screenshot

    # The parameters of the step.
    attr_accessor :params

    # The time before declaring a step failed.
    attr_accessor :timeout

    # Step type used in your Synthetic test.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'allow_failure' => :'allowFailure',
        :'always_execute' => :'alwaysExecute',
        :'exit_if_succeed' => :'exitIfSucceed',
        :'is_critical' => :'isCritical',
        :'name' => :'name',
        :'no_screenshot' => :'noScreenshot',
        :'params' => :'params',
        :'timeout' => :'timeout',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'allow_failure' => :'Boolean',
        :'always_execute' => :'Boolean',
        :'exit_if_succeed' => :'Boolean',
        :'is_critical' => :'Boolean',
        :'name' => :'String',
        :'no_screenshot' => :'Boolean',
        :'params' => :'Object',
        :'timeout' => :'Integer',
        :'type' => :'SyntheticsStepType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsStep` initialize method"
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

      if attributes.key?(:'allow_failure')
        self.allow_failure = attributes[:'allow_failure']
      end

      if attributes.key?(:'always_execute')
        self.always_execute = attributes[:'always_execute']
      end

      if attributes.key?(:'exit_if_succeed')
        self.exit_if_succeed = attributes[:'exit_if_succeed']
      end

      if attributes.key?(:'is_critical')
        self.is_critical = attributes[:'is_critical']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'no_screenshot')
        self.no_screenshot = attributes[:'no_screenshot']
      end

      if attributes.key?(:'params')
        self.params = attributes[:'params']
      end

      if attributes.key?(:'timeout')
        self.timeout = attributes[:'timeout']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
          allow_failure == o.allow_failure &&
          always_execute == o.always_execute &&
          exit_if_succeed == o.exit_if_succeed &&
          is_critical == o.is_critical &&
          name == o.name &&
          no_screenshot == o.no_screenshot &&
          params == o.params &&
          timeout == o.timeout &&
          type == o.type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [allow_failure, always_execute, exit_if_succeed, is_critical, name, no_screenshot, params, timeout, type].hash
    end
  end
end
