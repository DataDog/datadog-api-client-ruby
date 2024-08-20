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
  # Scorecard outcome for a specific rule, for a given service within a batched update.
  class OutcomesBatchRequestItem
    include BaseGenericModel

    # Any remarks regarding the scorecard rule's evaluation, and supports HTML hyperlinks.
    attr_accessor :remarks

    # The unique ID for a scorecard rule.
    attr_reader :rule_id

    # The unique name for a service in the catalog.
    attr_reader :service_name

    # The state of the rule evaluation.
    attr_reader :state

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'remarks' => :'remarks',
        :'rule_id' => :'rule_id',
        :'service_name' => :'service_name',
        :'state' => :'state'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'remarks' => :'String',
        :'rule_id' => :'String',
        :'service_name' => :'String',
        :'state' => :'State'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::OutcomesBatchRequestItem` initialize method"
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

      if attributes.key?(:'remarks')
        self.remarks = attributes[:'remarks']
      end

      if attributes.key?(:'rule_id')
        self.rule_id = attributes[:'rule_id']
      end

      if attributes.key?(:'service_name')
        self.service_name = attributes[:'service_name']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @rule_id.nil?
      return false if @service_name.nil?
      return false if @state.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param rule_id [Object] Object to be assigned
    # @!visibility private
    def rule_id=(rule_id)
      if rule_id.nil?
        fail ArgumentError, 'invalid value for "rule_id", rule_id cannot be nil.'
      end
      @rule_id = rule_id
    end

    # Custom attribute writer method with validation
    # @param service_name [Object] Object to be assigned
    # @!visibility private
    def service_name=(service_name)
      if service_name.nil?
        fail ArgumentError, 'invalid value for "service_name", service_name cannot be nil.'
      end
      @service_name = service_name
    end

    # Custom attribute writer method with validation
    # @param state [Object] Object to be assigned
    # @!visibility private
    def state=(state)
      if state.nil?
        fail ArgumentError, 'invalid value for "state", state cannot be nil.'
      end
      @state = state
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
          remarks == o.remarks &&
          rule_id == o.rule_id &&
          service_name == o.service_name &&
          state == o.state
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [remarks, rule_id, service_name, state].hash
    end
  end
end
