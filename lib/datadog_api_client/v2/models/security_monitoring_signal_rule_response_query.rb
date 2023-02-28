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
  # Query for matching rule on signals.
  class SecurityMonitoringSignalRuleResponseQuery
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The aggregation type.
    attr_accessor :aggregation

    # Fields to group by.
    attr_accessor :correlated_by_fields

    # Index of the rule query used to retrieve the correlated field.
    attr_reader :correlated_query_index

    # Default Rule ID to match on signals.
    attr_accessor :default_rule_id

    # Group of target fields to aggregate over.
    attr_accessor :metrics

    # Name of the query.
    attr_accessor :name

    # Rule ID to match on signals.
    attr_accessor :rule_id

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregation' => :'aggregation',
        :'correlated_by_fields' => :'correlatedByFields',
        :'correlated_query_index' => :'correlatedQueryIndex',
        :'default_rule_id' => :'defaultRuleId',
        :'metrics' => :'metrics',
        :'name' => :'name',
        :'rule_id' => :'ruleId'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggregation' => :'SecurityMonitoringRuleQueryAggregation',
        :'correlated_by_fields' => :'Array<String>',
        :'correlated_query_index' => :'Integer',
        :'default_rule_id' => :'String',
        :'metrics' => :'Array<String>',
        :'name' => :'String',
        :'rule_id' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringSignalRuleResponseQuery` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SecurityMonitoringSignalRuleResponseQuery`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aggregation')
        self.aggregation = attributes[:'aggregation']
      end

      if attributes.key?(:'correlated_by_fields')
        if (value = attributes[:'correlated_by_fields']).is_a?(Array)
          self.correlated_by_fields = value
        end
      end

      if attributes.key?(:'correlated_query_index')
        self.correlated_query_index = attributes[:'correlated_query_index']
      end

      if attributes.key?(:'default_rule_id')
        self.default_rule_id = attributes[:'default_rule_id']
      end

      if attributes.key?(:'metrics')
        if (value = attributes[:'metrics']).is_a?(Array)
          self.metrics = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'rule_id')
        self.rule_id = attributes[:'rule_id']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@correlated_query_index.nil? && @correlated_query_index > 9
      true
    end

    # Custom attribute writer method with validation
    # @param correlated_query_index [Object] Object to be assigned
    # @!visibility private
    def correlated_query_index=(correlated_query_index)
      if !correlated_query_index.nil? && correlated_query_index > 9
        fail ArgumentError, 'invalid value for "correlated_query_index", must be smaller than or equal to 9.'
      end
      @correlated_query_index = correlated_query_index
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregation == o.aggregation &&
          correlated_by_fields == o.correlated_by_fields &&
          correlated_query_index == o.correlated_query_index &&
          default_rule_id == o.default_rule_id &&
          metrics == o.metrics &&
          name == o.name &&
          rule_id == o.rule_id
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:aggregation, :correlated_by_fields, :correlated_query_index, :default_rule_id, :metrics, :name, :rule_id].hash
    end
  end
end
