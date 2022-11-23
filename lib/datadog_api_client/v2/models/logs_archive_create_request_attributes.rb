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
  # The attributes associated with the archive.
  class LogsArchiveCreateRequestAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # An archive's destination.
    attr_reader :destination

    # To store the tags in the archive, set the value "true".
    # If it is set to "false", the tags will be deleted when the logs are sent to the archive.
    attr_accessor :include_tags

    # The archive name.
    attr_reader :name

    # The archive query/filter. Logs matching this query are included in the archive.
    attr_reader :query

    # Maximum scan size for rehydration from this archive.
    attr_accessor :rehydration_max_scan_size_in_gb

    # An array of tags to add to rehydrated logs from an archive.
    attr_accessor :rehydration_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'destination' => :'destination',
        :'include_tags' => :'include_tags',
        :'name' => :'name',
        :'query' => :'query',
        :'rehydration_max_scan_size_in_gb' => :'rehydration_max_scan_size_in_gb',
        :'rehydration_tags' => :'rehydration_tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'destination' => :'LogsArchiveCreateRequestDestination',
        :'include_tags' => :'Boolean',
        :'name' => :'String',
        :'query' => :'String',
        :'rehydration_max_scan_size_in_gb' => :'Integer',
        :'rehydration_tags' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'rehydration_max_scan_size_in_gb',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::LogsArchiveCreateRequestAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::LogsArchiveCreateRequestAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'destination')
        self.destination = attributes[:'destination']
      end

      if attributes.key?(:'include_tags')
        self.include_tags = attributes[:'include_tags']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'rehydration_max_scan_size_in_gb')
        self.rehydration_max_scan_size_in_gb = attributes[:'rehydration_max_scan_size_in_gb']
      end

      if attributes.key?(:'rehydration_tags')
        if (value = attributes[:'rehydration_tags']).is_a?(Array)
          self.rehydration_tags = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @destination.nil?
      return false if @name.nil?
      return false if @query.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param destination [Object] Object to be assigned
    # @!visibility private
    def destination=(destination)
      if destination.nil?
        fail ArgumentError, 'invalid value for "destination", destination cannot be nil.'
      end
      @destination = destination
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

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          destination == o.destination &&
          include_tags == o.include_tags &&
          name == o.name &&
          query == o.query &&
          rehydration_max_scan_size_in_gb == o.rehydration_max_scan_size_in_gb &&
          rehydration_tags == o.rehydration_tags
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [destination, include_tags, name, query, rehydration_max_scan_size_in_gb, rehydration_tags].hash
    end
  end
end
