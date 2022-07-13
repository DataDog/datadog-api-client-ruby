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
  # The GeoIP parser takes an IP address attribute and extracts if available
  # the Continent, Country, Subdivision, and City information in the target attribute path.
  class LogsGeoIPParser
    include DatadogAPIClient::BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Whether or not the processor is enabled.
    attr_accessor :is_enabled

    # Name of the processor.
    attr_accessor :name

    # Array of source attributes.
    attr_accessor :sources

    # Name of the parent attribute that contains all the extracted details from the `sources`.
    attr_accessor :target

    # Type of GeoIP parser.
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'is_enabled' => :'is_enabled',
        :'name' => :'name',
        :'sources' => :'sources',
        :'target' => :'target',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'is_enabled' => :'Boolean',
        :'name' => :'String',
        :'sources' => :'Array<String>',
        :'target' => :'String',
        :'type' => :'LogsGeoIPParserType'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsGeoIPParser` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogsGeoIPParser`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      else
        self.is_enabled = false
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'sources')
        if (value = attributes[:'sources']).is_a?(Array)
          self.sources = value
        end
      else
        self.sources = ['network.client.ip']
      end

      if attributes.key?(:'target')
        self.target = attributes[:'target']
      else
        self.target = 'network.client.geoip'
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'geo-ip-parser'
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @sources.nil?
      return false if @target.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param sources [Object] Object to be assigned
    # @!visibility private
    def sources=(sources)
      if sources.nil?
        fail ArgumentError, 'invalid value for "sources", sources cannot be nil.'
      end
      @sources = sources
    end

    # Custom attribute writer method with validation
    # @param target [Object] Object to be assigned
    # @!visibility private
    def target=(target)
      if target.nil?
        fail ArgumentError, 'invalid value for "target", target cannot be nil.'
      end
      @target = target
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_enabled == o.is_enabled &&
          name == o.name &&
          sources == o.sources &&
          target == o.target &&
          type == o.type
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [is_enabled, name, sources, target, type].hash
    end
  end
end
