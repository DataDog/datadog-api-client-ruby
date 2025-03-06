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
  # The scope of the WAF custom rule.
  class ApplicationSecurityWafCustomRuleConditionParameters
    include BaseGenericModel

    # Identifier of a list of data from the denylist. Can only be used as substitution from the list parameter.
    attr_accessor :data

    # List of inputs on which at least one should match with the given operator.
    attr_reader :inputs

    # List of value to use with the condition. Only used with the phrase_match, !phrase_match, exact_match and
    # !exact_match operator.
    attr_accessor :list

    # Options for the operator of this condition.
    attr_accessor :options

    # Regex to use with the condition. Only used with match_regex and !match_regex operator.
    attr_accessor :regex

    # Store the captured value in the specified tag name. Only used with the capture_data operator.
    attr_accessor :value

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'data' => :'data',
        :'inputs' => :'inputs',
        :'list' => :'list',
        :'options' => :'options',
        :'regex' => :'regex',
        :'value' => :'value'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'data' => :'String',
        :'inputs' => :'Array<ApplicationSecurityWafCustomRuleConditionInput>',
        :'list' => :'Array<String>',
        :'options' => :'ApplicationSecurityWafCustomRuleConditionOptions',
        :'regex' => :'String',
        :'value' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleConditionParameters` initialize method"
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

      if attributes.key?(:'data')
        self.data = attributes[:'data']
      end

      if attributes.key?(:'inputs')
        if (value = attributes[:'inputs']).is_a?(Array)
          self.inputs = value
        end
      end

      if attributes.key?(:'list')
        if (value = attributes[:'list']).is_a?(Array)
          self.list = value
        end
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'regex')
        self.regex = attributes[:'regex']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @inputs.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param inputs [Object] Object to be assigned
    # @!visibility private
    def inputs=(inputs)
      if inputs.nil?
        fail ArgumentError, 'invalid value for "inputs", inputs cannot be nil.'
      end
      @inputs = inputs
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
          data == o.data &&
          inputs == o.inputs &&
          list == o.list &&
          options == o.options &&
          regex == o.regex &&
          value == o.value &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [data, inputs, list, options, regex, value, additional_properties].hash
    end
  end
end
