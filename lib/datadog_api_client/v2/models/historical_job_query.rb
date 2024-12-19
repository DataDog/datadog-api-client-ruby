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
  # Query for selecting logs analyzed by the historical job.
  class HistoricalJobQuery
    include BaseGenericModel

    # The aggregation type.
    attr_accessor :aggregation

    # Field for which the cardinality is measured. Sent as an array.
    attr_accessor :distinct_fields

    # Fields to group by.
    attr_accessor :group_by_fields

    # When false, events without a group-by value are ignored by the query. When true, events with missing group-by fields are processed with `N/A`, replacing the missing values.
    attr_accessor :has_optional_group_by_fields

    # Group of target fields to aggregate over when using the sum, max, geo data, or new value aggregations. The sum, max, and geo data aggregations only accept one value in this list, whereas the new value aggregation accepts up to five values.
    attr_accessor :metrics

    # Name of the query.
    attr_accessor :name

    # Query to run on logs.
    attr_accessor :query

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregation' => :'aggregation',
        :'distinct_fields' => :'distinctFields',
        :'group_by_fields' => :'groupByFields',
        :'has_optional_group_by_fields' => :'hasOptionalGroupByFields',
        :'metrics' => :'metrics',
        :'name' => :'name',
        :'query' => :'query'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggregation' => :'SecurityMonitoringRuleQueryAggregation',
        :'distinct_fields' => :'Array<String>',
        :'group_by_fields' => :'Array<String>',
        :'has_optional_group_by_fields' => :'Boolean',
        :'metrics' => :'Array<String>',
        :'name' => :'String',
        :'query' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::HistoricalJobQuery` initialize method"
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

      if attributes.key?(:'aggregation')
        self.aggregation = attributes[:'aggregation']
      end

      if attributes.key?(:'distinct_fields')
        if (value = attributes[:'distinct_fields']).is_a?(Array)
          self.distinct_fields = value
        end
      end

      if attributes.key?(:'group_by_fields')
        if (value = attributes[:'group_by_fields']).is_a?(Array)
          self.group_by_fields = value
        end
      end

      if attributes.key?(:'has_optional_group_by_fields')
        self.has_optional_group_by_fields = attributes[:'has_optional_group_by_fields']
      end

      if attributes.key?(:'metrics')
        if (value = attributes[:'metrics']).is_a?(Array)
          self.metrics = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
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
          aggregation == o.aggregation &&
          distinct_fields == o.distinct_fields &&
          group_by_fields == o.group_by_fields &&
          has_optional_group_by_fields == o.has_optional_group_by_fields &&
          metrics == o.metrics &&
          name == o.name &&
          query == o.query &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aggregation, distinct_fields, group_by_fields, has_optional_group_by_fields, metrics, name, query, additional_properties].hash
    end
  end
end
