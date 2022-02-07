=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

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
      else
        self.is_enabled = false
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'override_on_conflict')
        self.override_on_conflict = attributes[:'override_on_conflict']
      else
        self.override_on_conflict = false
      end

      if attributes.key?(:'preserve_source')
        self.preserve_source = attributes[:'preserve_source']
      else
        self.preserve_source = false
      end

      if attributes.key?(:'source_type')
        self.source_type = attributes[:'source_type']
      else
        self.source_type = 'attribute'
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
      else
        self.target_type = 'attribute'
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'attribute-remapper'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if @sources.nil?
        invalid_properties.push('invalid value for "sources", sources cannot be nil.')
      end
      if @target.nil?
        invalid_properties.push('invalid value for "target", target cannot be nil.')
      end
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end
      invalid_properties
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
      [is_enabled, name, override_on_conflict, preserve_source, source_type, sources, target, target_format, target_type, type].hash
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param type [string] Data type
    # @param value [string] Value to be deserialized
    # @return [Object] Deserialized data
    # @!visibility private
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when :Array
        # generic array, return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::V1::UnparsedObject
          self._unparsed = true
        end
        res
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    # @!visibility private
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
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
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param value [Object] Any valid value
    # @return [Hash] Returns the value in the form of hash
    # @!visibility private
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
