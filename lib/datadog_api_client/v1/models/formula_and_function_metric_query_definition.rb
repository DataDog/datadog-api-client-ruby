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
  # A formula and functions metrics query.
  class FormulaAndFunctionMetricQueryDefinition
    include BaseGenericModel

    # The aggregation methods available for metrics queries.
    attr_accessor :aggregator

    # The source organization UUID for cross organization queries. Feature in Private Beta.
    attr_reader :cross_org_uuids

    # Data source for metrics queries.
    attr_reader :data_source

    # Name of the query for use in formulas.
    attr_reader :name

    # Metrics query definition.
    attr_reader :query

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregator' => :'aggregator',
        :'cross_org_uuids' => :'cross_org_uuids',
        :'data_source' => :'data_source',
        :'name' => :'name',
        :'query' => :'query'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggregator' => :'FormulaAndFunctionMetricAggregation',
        :'cross_org_uuids' => :'Array<String>',
        :'data_source' => :'FormulaAndFunctionMetricDataSource',
        :'name' => :'String',
        :'query' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition` initialize method"
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

      if attributes.key?(:'aggregator')
        self.aggregator = attributes[:'aggregator']
      end

      if attributes.key?(:'cross_org_uuids')
        if (value = attributes[:'cross_org_uuids']).is_a?(Array)
          self.cross_org_uuids = value
        end
      end

      if attributes.key?(:'data_source')
        self.data_source = attributes[:'data_source']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@cross_org_uuids.nil? && @cross_org_uuids.length > 1
      return false if @data_source.nil?
      return false if @name.nil?
      return false if @query.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param cross_org_uuids [Object] Object to be assigned
    # @!visibility private
    def cross_org_uuids=(cross_org_uuids)
      if !cross_org_uuids.nil? && cross_org_uuids.length > 1
        fail ArgumentError, 'invalid value for "cross_org_uuids", number of items must be less than or equal to 1.'
      end
      @cross_org_uuids = cross_org_uuids
    end

    # Custom attribute writer method with validation
    # @param data_source [Object] Object to be assigned
    # @!visibility private
    def data_source=(data_source)
      if data_source.nil?
        fail ArgumentError, 'invalid value for "data_source", data_source cannot be nil.'
      end
      @data_source = data_source
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
    # @param query [Object] Object to be assigned
    # @!visibility private
    def query=(query)
      if query.nil?
        fail ArgumentError, 'invalid value for "query", query cannot be nil.'
      end
      @query = query
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
          aggregator == o.aggregator &&
          cross_org_uuids == o.cross_org_uuids &&
          data_source == o.data_source &&
          name == o.name &&
          query == o.query &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aggregator, cross_org_uuids, data_source, name, query, additional_properties].hash
    end
  end
end
