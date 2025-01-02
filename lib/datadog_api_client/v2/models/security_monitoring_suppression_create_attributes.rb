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
  # Object containing the attributes of the suppression rule to be created.
  class SecurityMonitoringSuppressionCreateAttributes
    include BaseGenericModel

    # An exclusion query on the input data of the security rules, which could be logs, Agent events, or other types of data based on the security rule. Events matching this query are ignored by any detection rules referenced in the suppression rule.
    attr_accessor :data_exclusion_query

    # A description for the suppression rule.
    attr_accessor :description

    # Whether the suppression rule is enabled.
    attr_reader :enabled

    # A Unix millisecond timestamp giving an expiration date for the suppression rule. After this date, it won't suppress signals anymore.
    attr_accessor :expiration_date

    # The name of the suppression rule.
    attr_reader :name

    # The rule query of the suppression rule, with the same syntax as the search bar for detection rules.
    attr_reader :rule_query

    # A Unix millisecond timestamp giving the start date for the suppression rule. After this date, it starts suppressing signals.
    attr_accessor :start_date

    # The suppression query of the suppression rule. If a signal matches this query, it is suppressed and is not triggered. It uses the same syntax as the queries to search signals in the Signals Explorer.
    attr_accessor :suppression_query

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'data_exclusion_query' => :'data_exclusion_query',
        :'description' => :'description',
        :'enabled' => :'enabled',
        :'expiration_date' => :'expiration_date',
        :'name' => :'name',
        :'rule_query' => :'rule_query',
        :'start_date' => :'start_date',
        :'suppression_query' => :'suppression_query'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'data_exclusion_query' => :'String',
        :'description' => :'String',
        :'enabled' => :'Boolean',
        :'expiration_date' => :'Integer',
        :'name' => :'String',
        :'rule_query' => :'String',
        :'start_date' => :'Integer',
        :'suppression_query' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringSuppressionCreateAttributes` initialize method"
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

      if attributes.key?(:'data_exclusion_query')
        self.data_exclusion_query = attributes[:'data_exclusion_query']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'rule_query')
        self.rule_query = attributes[:'rule_query']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'suppression_query')
        self.suppression_query = attributes[:'suppression_query']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @enabled.nil?
      return false if @name.nil?
      return false if @rule_query.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param enabled [Object] Object to be assigned
    # @!visibility private
    def enabled=(enabled)
      if enabled.nil?
        fail ArgumentError, 'invalid value for "enabled", enabled cannot be nil.'
      end
      @enabled = enabled
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

    # Custom attribute writer method with validation
    # @param rule_query [Object] Object to be assigned
    # @!visibility private
    def rule_query=(rule_query)
      if rule_query.nil?
        fail ArgumentError, 'invalid value for "rule_query", rule_query cannot be nil.'
      end
      @rule_query = rule_query
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
          data_exclusion_query == o.data_exclusion_query &&
          description == o.description &&
          enabled == o.enabled &&
          expiration_date == o.expiration_date &&
          name == o.name &&
          rule_query == o.rule_query &&
          start_date == o.start_date &&
          suppression_query == o.suppression_query &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [data_exclusion_query, description, enabled, expiration_date, name, rule_query, start_date, suppression_query, additional_properties].hash
    end
  end
end
