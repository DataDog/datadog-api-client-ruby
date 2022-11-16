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
  # The remapper processor remaps any source attribute(s) or tag to another target attribute or tag.
  # Constraints on the tag/attribute name are explained in the [Tag Best Practice documentation](https://docs.datadoghq.com/logs/guide/log-parsing-best-practice).
  # Some additional constraints are applied as `:` or `,` are not allowed in the target tag/attribute name.
  class LogsAttributeRemapper
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Whether or not the processor is enabled.
    attr_accessor :is_enabled

    # Name of the processor.
    attr_accessor :name

    # Override or not the target element if already set,
    attr_accessor :override_on_conflict

    # Remove or preserve the remapped source element.
    attr_accessor :preserve_source

    # Defines if the sources are from log `attribute` or `tag`.
    attr_accessor :source_type

    # Array of source attributes.
    attr_accessor :sources

    # Final attribute or tag name to remap the sources to.
    attr_accessor :target

    # If the `target_type` of the remapper is `attribute`, try to cast the value to a new specific type.
    # If the cast is not possible, the original type is kept. `string`, `integer`, or `double` are the possible types.
    # If the `target_type` is `tag`, this parameter may not be specified.
    attr_accessor :target_format

    # Defines if the final attribute or tag name is from log `attribute` or `tag`.
    attr_accessor :target_type

    # Type of logs attribute remapper.
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'is_enabled' => :'is_enabled',
        :'name' => :'name',
        :'override_on_conflict' => :'override_on_conflict',
        :'preserve_source' => :'preserve_source',
        :'source_type' => :'source_type',
        :'sources' => :'sources',
        :'target' => :'target',
        :'target_format' => :'target_format',
        :'target_type' => :'target_type',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'is_enabled' => :'Boolean',
        :'name' => :'String',
        :'override_on_conflict' => :'Boolean',
        :'preserve_source' => :'Boolean',
        :'source_type' => :'String',
        :'sources' => :'Array<String>',
        :'target' => :'String',
        :'target_format' => :'TargetFormatType',
        :'target_type' => :'String',
        :'type' => :'LogsAttributeRemapperType'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsAttributeRemapper` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogsAttributeRemapper`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'override_on_conflict')
        self.override_on_conflict = attributes[:'override_on_conflict']
      end

      if attributes.key?(:'preserve_source')
        self.preserve_source = attributes[:'preserve_source']
      end

      if attributes.key?(:'source_type')
        self.source_type = attributes[:'source_type']
      end

      if attributes.key?(:'sources')
        if (value = attributes[:'sources']).is_a?(Array)
          self.sources = value
        end
      end

      if attributes.key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.key?(:'target_format')
        self.target_format = attributes[:'target_format']
      end

      if attributes.key?(:'target_type')
        self.target_type = attributes[:'target_type']
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
          override_on_conflict == o.override_on_conflict &&
          preserve_source == o.preserve_source &&
          source_type == o.source_type &&
          sources == o.sources &&
          target == o.target &&
          target_format == o.target_format &&
          target_type == o.target_type &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [is_enabled, name, override_on_conflict, preserve_source, source_type, sources, target, target_format, target_type, type].hash
    end
  end
end
