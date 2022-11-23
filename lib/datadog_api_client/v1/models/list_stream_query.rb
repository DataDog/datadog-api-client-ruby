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
  # Updated list stream widget.
  class ListStreamQuery
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Source from which to query items to display in the stream.
    attr_reader :data_source

    # List of indexes.
    attr_accessor :indexes

    # Widget query.
    attr_reader :query_string

    # Option for storage location. Feature in Private Beta.
    attr_accessor :storage

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'data_source' => :'data_source',
        :'indexes' => :'indexes',
        :'query_string' => :'query_string',
        :'storage' => :'storage'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'data_source' => :'ListStreamSource',
        :'indexes' => :'Array<String>',
        :'query_string' => :'String',
        :'storage' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ListStreamQuery` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ListStreamQuery`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'data_source')
        self.data_source = attributes[:'data_source']
      end

      if attributes.key?(:'indexes')
        if (value = attributes[:'indexes']).is_a?(Array)
          self.indexes = value
        end
      end

      if attributes.key?(:'query_string')
        self.query_string = attributes[:'query_string']
      end

      if attributes.key?(:'storage')
        self.storage = attributes[:'storage']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @data_source.nil?
      return false if @query_string.nil?
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
    # @param query_string [Object] Object to be assigned
    # @!visibility private
    def query_string=(query_string)
      if query_string.nil?
        fail ArgumentError, 'invalid value for "query_string", query_string cannot be nil.'
      end
      @query_string = query_string
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          data_source == o.data_source &&
          indexes == o.indexes &&
          query_string == o.query_string &&
          storage == o.storage
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [data_source, indexes, query_string, storage].hash
    end
  end
end
