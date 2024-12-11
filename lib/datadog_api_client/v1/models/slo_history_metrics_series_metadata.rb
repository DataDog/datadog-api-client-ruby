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
  # Query metadata.
  class SLOHistoryMetricsSeriesMetadata
    include BaseGenericModel

    # Query aggregator function.
    attr_accessor :aggr

    # Query expression.
    attr_accessor :expression

    # Query metric used.
    attr_accessor :metric

    # Query index from original combined query.
    attr_accessor :query_index

    # Query scope.
    attr_accessor :scope

    # An array of metric units that contains up to two unit objects.
    # For example, bytes represents one unit object and bytes per second represents two unit objects.
    # If a metric query only has one unit object, the second array element is null.
    attr_accessor :unit

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggr' => :'aggr',
        :'expression' => :'expression',
        :'metric' => :'metric',
        :'query_index' => :'query_index',
        :'scope' => :'scope',
        :'unit' => :'unit'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggr' => :'String',
        :'expression' => :'String',
        :'metric' => :'String',
        :'query_index' => :'Integer',
        :'scope' => :'String',
        :'unit' => :'Array<SLOHistoryMetricsSeriesMetadataUnit>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'unit',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadata` initialize method"
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

      if attributes.key?(:'aggr')
        self.aggr = attributes[:'aggr']
      end

      if attributes.key?(:'expression')
        self.expression = attributes[:'expression']
      end

      if attributes.key?(:'metric')
        self.metric = attributes[:'metric']
      end

      if attributes.key?(:'query_index')
        self.query_index = attributes[:'query_index']
      end

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'unit')
        if (value = attributes[:'unit']).is_a?(Array)
          self.unit = value
        end
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
          aggr == o.aggr &&
          expression == o.expression &&
          metric == o.metric &&
          query_index == o.query_index &&
          scope == o.scope &&
          unit == o.unit &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aggr, expression, metric, query_index, scope, unit, additional_properties].hash
    end
  end
end
