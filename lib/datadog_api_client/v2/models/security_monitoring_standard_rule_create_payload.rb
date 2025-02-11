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
  # Create a new rule.
  class SecurityMonitoringStandardRuleCreatePayload
    include BaseGenericModel

    # Cases for generating signals.
    attr_reader :cases

    # Additional queries to filter matched events before they are processed. This field is deprecated for log detection, signal correlation, and workload security rules.
    attr_accessor :filters

    # Additional grouping to perform on top of the existing groups in the query section. Must be a subset of the existing groups.
    attr_accessor :group_signals_by

    # Whether the notifications include the triggering group-by values in their title.
    attr_accessor :has_extended_title

    # Whether the rule is enabled.
    attr_reader :is_enabled

    # Message for generated signals.
    attr_reader :message

    # The name of the rule.
    attr_reader :name

    # Options.
    attr_reader :options

    # Queries for selecting logs which are part of the rule.
    attr_reader :queries

    # Reference tables for the rule.
    attr_accessor :reference_tables

    # Tags for generated signals.
    attr_accessor :tags

    # Cases for generating signals from third-party rules. Only available for third-party rules.
    attr_accessor :third_party_cases

    # The rule type.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cases' => :'cases',
        :'filters' => :'filters',
        :'group_signals_by' => :'groupSignalsBy',
        :'has_extended_title' => :'hasExtendedTitle',
        :'is_enabled' => :'isEnabled',
        :'message' => :'message',
        :'name' => :'name',
        :'options' => :'options',
        :'queries' => :'queries',
        :'reference_tables' => :'referenceTables',
        :'tags' => :'tags',
        :'third_party_cases' => :'thirdPartyCases',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'cases' => :'Array<SecurityMonitoringRuleCaseCreate>',
        :'filters' => :'Array<SecurityMonitoringFilter>',
        :'group_signals_by' => :'Array<String>',
        :'has_extended_title' => :'Boolean',
        :'is_enabled' => :'Boolean',
        :'message' => :'String',
        :'name' => :'String',
        :'options' => :'SecurityMonitoringRuleOptions',
        :'queries' => :'Array<SecurityMonitoringStandardRuleQuery>',
        :'reference_tables' => :'Array<SecurityMonitoringReferenceTable>',
        :'tags' => :'Array<String>',
        :'third_party_cases' => :'Array<SecurityMonitoringThirdPartyRuleCaseCreate>',
        :'type' => :'SecurityMonitoringRuleTypeCreate'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringStandardRuleCreatePayload` initialize method"
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

      if attributes.key?(:'cases')
        if (value = attributes[:'cases']).is_a?(Array)
          self.cases = value
        end
      end

      if attributes.key?(:'filters')
        if (value = attributes[:'filters']).is_a?(Array)
          self.filters = value
        end
      end

      if attributes.key?(:'group_signals_by')
        if (value = attributes[:'group_signals_by']).is_a?(Array)
          self.group_signals_by = value
        end
      end

      if attributes.key?(:'has_extended_title')
        self.has_extended_title = attributes[:'has_extended_title']
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'queries')
        if (value = attributes[:'queries']).is_a?(Array)
          self.queries = value
        end
      end

      if attributes.key?(:'reference_tables')
        if (value = attributes[:'reference_tables']).is_a?(Array)
          self.reference_tables = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'third_party_cases')
        if (value = attributes[:'third_party_cases']).is_a?(Array)
          self.third_party_cases = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @cases.nil?
      return false if @is_enabled.nil?
      return false if @message.nil?
      return false if @name.nil?
      return false if @options.nil?
      return false if @queries.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param cases [Object] Object to be assigned
    # @!visibility private
    def cases=(cases)
      if cases.nil?
        fail ArgumentError, 'invalid value for "cases", cases cannot be nil.'
      end
      @cases = cases
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

    # Custom attribute writer method with validation
    # @param message [Object] Object to be assigned
    # @!visibility private
    def message=(message)
      if message.nil?
        fail ArgumentError, 'invalid value for "message", message cannot be nil.'
      end
      @message = message
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
    # @param options [Object] Object to be assigned
    # @!visibility private
    def options=(options)
      if options.nil?
        fail ArgumentError, 'invalid value for "options", options cannot be nil.'
      end
      @options = options
    end

    # Custom attribute writer method with validation
    # @param queries [Object] Object to be assigned
    # @!visibility private
    def queries=(queries)
      if queries.nil?
        fail ArgumentError, 'invalid value for "queries", queries cannot be nil.'
      end
      @queries = queries
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
          cases == o.cases &&
          filters == o.filters &&
          group_signals_by == o.group_signals_by &&
          has_extended_title == o.has_extended_title &&
          is_enabled == o.is_enabled &&
          message == o.message &&
          name == o.name &&
          options == o.options &&
          queries == o.queries &&
          reference_tables == o.reference_tables &&
          tags == o.tags &&
          third_party_cases == o.third_party_cases &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [cases, filters, group_signals_by, has_extended_title, is_enabled, message, name, options, queries, reference_tables, tags, third_party_cases, type, additional_properties].hash
    end
  end
end
