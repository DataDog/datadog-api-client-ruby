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
  # An individual scalar events query.
  class EventsScalarQuery
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The instructions for what to compute for this query.
    attr_reader :compute

    # A data source that is powered by the Events Platform.
    attr_reader :data_source

    # The list of facets on which to split results.
    attr_accessor :group_by

    # The indexes in which to search.
    attr_accessor :indexes

    # The variable name for use in formulas.
    attr_accessor :name

    # Configuration of the search/filter for an events query.
    attr_accessor :search

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'compute' => :'compute',
        :'data_source' => :'data_source',
        :'group_by' => :'group_by',
        :'indexes' => :'indexes',
        :'name' => :'name',
        :'search' => :'search'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'compute' => :'EventsCompute',
        :'data_source' => :'EventsDataSource',
        :'group_by' => :'Array<EventsGroupBy>',
        :'indexes' => :'Array<String>',
        :'name' => :'String',
        :'search' => :'EventsSearch'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::EventsScalarQuery` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::EventsScalarQuery`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'compute')
        self.compute = attributes[:'compute']
      end

      if attributes.key?(:'data_source')
        self.data_source = attributes[:'data_source']
      end

      if attributes.key?(:'group_by')
        if (value = attributes[:'group_by']).is_a?(Array)
          self.group_by = value
        end
      end

      if attributes.key?(:'indexes')
        if (value = attributes[:'indexes']).is_a?(Array)
          self.indexes = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'search')
        self.search = attributes[:'search']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @compute.nil?
      return false if @data_source.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param compute [Object] Object to be assigned
    # @!visibility private
    def compute=(compute)
      if compute.nil?
        fail ArgumentError, 'invalid value for "compute", compute cannot be nil.'
      end
      @compute = compute
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

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          compute == o.compute &&
          data_source == o.data_source &&
          group_by == o.group_by &&
          indexes == o.indexes &&
          name == o.name &&
          search == o.search
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:compute, :data_source, :group_by, :indexes, :name, :search].hash
    end
  end
end
