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
  class FormulaAndFunctionSLOQueryDefinition
    include BaseGenericModel

    # Data source for SLO measures queries.
    attr_reader :data_source

    # Group mode to query measures.
    attr_accessor :group_mode

    # SLO measures queries.
    attr_reader :measure

    # Name of the query for use in formulas.
    attr_accessor :name

    # ID of an SLO to query measures.
    attr_reader :slo_id

    # Name of the query for use in formulas.
    attr_accessor :slo_query_type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'data_source' => :'data_source',
        :'group_mode' => :'group_mode',
        :'measure' => :'measure',
        :'name' => :'name',
        :'slo_id' => :'slo_id',
        :'slo_query_type' => :'slo_query_type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'data_source' => :'FormulaAndFunctionSLODataSource',
        :'group_mode' => :'FormulaAndFunctionSLOGroupMode',
        :'measure' => :'FormulaAndFunctionSLOMeasure',
        :'name' => :'String',
        :'slo_id' => :'String',
        :'slo_query_type' => :'FormulaAndFunctionSLOQueryType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::FormulaAndFunctionSLOQueryDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::FormulaAndFunctionSLOQueryDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'data_source')
        self.data_source = attributes[:'data_source']
      end

      if attributes.key?(:'group_mode')
        self.group_mode = attributes[:'group_mode']
      end

      if attributes.key?(:'measure')
        self.measure = attributes[:'measure']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'slo_id')
        self.slo_id = attributes[:'slo_id']
      end

      if attributes.key?(:'slo_query_type')
        self.slo_query_type = attributes[:'slo_query_type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @data_source.nil?
      return false if @measure.nil?
      return false if @slo_id.nil?
      true
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
    # @param measure [Object] Object to be assigned
    # @!visibility private
    def measure=(measure)
      if measure.nil?
        fail ArgumentError, 'invalid value for "measure", measure cannot be nil.'
      end
      @measure = measure
    end

    # Custom attribute writer method with validation
    # @param slo_id [Object] Object to be assigned
    # @!visibility private
    def slo_id=(slo_id)
      if slo_id.nil?
        fail ArgumentError, 'invalid value for "slo_id", slo_id cannot be nil.'
      end
      @slo_id = slo_id
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          data_source == o.data_source &&
          group_mode == o.group_mode &&
          measure == o.measure &&
          name == o.name &&
          slo_id == o.slo_id &&
          slo_query_type == o.slo_query_type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [data_source, group_mode, measure, name, slo_id, slo_query_type].hash
    end
  end
end
