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
  # Use this Processor if you want to assign some attributes as the official status.
  # 
  # Each incoming status value is mapped as follows.
  # 
  #   - Integers from 0 to 7 map to the Syslog severity standards
  #   - Strings beginning with `emerg` or f (case-insensitive) map to `emerg` (0)
  #   - Strings beginning with `a` (case-insensitive) map to `alert` (1)
  #   - Strings beginning with `c` (case-insensitive) map to `critical` (2)
  #   - Strings beginning with `err` (case-insensitive) map to `error` (3)
  #   - Strings beginning with `w` (case-insensitive) map to `warning` (4)
  #   - Strings beginning with `n` (case-insensitive) map to `notice` (5)
  #   - Strings beginning with `i` (case-insensitive) map to `info` (6)
  #   - Strings beginning with `d`, `trace` or `verbose` (case-insensitive) map to `debug` (7)
  #   - Strings beginning with `o` or matching `OK` or `Success` (case-insensitive) map to OK
  #   - All others map to `info` (6)
  # 
  #   **Note:** If multiple log status remapper processors can be applied to a given log,
  #   only the first one (according to the pipelines order) is taken into account.
  class LogsStatusRemapper
    include BaseGenericModel

    # Whether or not the processor is enabled.
    attr_accessor :is_enabled

    # Name of the processor.
    attr_accessor :name

    # Array of source attributes.
    attr_reader :sources

    # Type of logs status remapper.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'is_enabled' => :'is_enabled',
        :'name' => :'name',
        :'sources' => :'sources',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'is_enabled' => :'Boolean',
        :'name' => :'String',
        :'sources' => :'Array<String>',
        :'type' => :'LogsStatusRemapperType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsStatusRemapper` initialize method"
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

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'sources')
        if (value = attributes[:'sources']).is_a?(Array)
          self.sources = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @sources.nil?
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
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
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
          is_enabled == o.is_enabled &&
          name == o.name &&
          sources == o.sources &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [is_enabled, name, sources, type, additional_properties].hash
    end
  end
end
