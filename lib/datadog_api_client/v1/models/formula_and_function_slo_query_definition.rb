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

    # Additional filters applied to the SLO query.
    attr_accessor :additional_query_filters

    # The source organization UUID for cross organization queries. Feature in Private Beta.
    attr_reader :cross_org_uuids

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

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'additional_query_filters' => :'additional_query_filters',
        :'cross_org_uuids' => :'cross_org_uuids',
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
        :'additional_query_filters' => :'String',
        :'cross_org_uuids' => :'Array<String>',
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

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'additional_query_filters')
        self.additional_query_filters = attributes[:'additional_query_filters']
      end

      if attributes.key?(:'cross_org_uuids')
        if (value = attributes[:'cross_org_uuids']).is_a?(Array)
          self.cross_org_uuids = value
        end
      end

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
      return false if !@cross_org_uuids.nil? && @cross_org_uuids.length > 1
      return false if @data_source.nil?
      return false if @measure.nil?
      return false if @slo_id.nil?
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
          additional_query_filters == o.additional_query_filters &&
          cross_org_uuids == o.cross_org_uuids &&
          data_source == o.data_source &&
          group_mode == o.group_mode &&
          measure == o.measure &&
          name == o.name &&
          slo_id == o.slo_id &&
          slo_query_type == o.slo_query_type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [additional_query_filters, cross_org_uuids, data_source, group_mode, measure, name, slo_id, slo_query_type].hash
    end
  end
end
