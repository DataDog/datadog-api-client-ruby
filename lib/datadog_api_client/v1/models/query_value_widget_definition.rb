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
  # Query values display the current value of a given metric, APM, or log query.
  class QueryValueWidgetDefinition
    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # # Whether to use auto-scaling or not.
    attr_accessor :autoscale

    # # List of custom links.
    attr_accessor :custom_links

    # # Display a unit of your choice on the widget.
    attr_accessor :custom_unit

    # # Number of decimals to show. If not defined, the widget uses the raw value.
    attr_accessor :precision

    # # Widget definition.
    attr_accessor :requests

    # # How to align the text on the widget.
    attr_accessor :text_align

    # # Time setting for the widget.
    attr_accessor :time

    # # Title of your widget.
    attr_accessor :title

    # # How to align the text on the widget.
    attr_accessor :title_align

    # # Size of the title.
    attr_accessor :title_size

    # # Type of the query value widget.
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'autoscale' => :'autoscale',
        :'custom_links' => :'custom_links',
        :'custom_unit' => :'custom_unit',
        :'precision' => :'precision',
        :'requests' => :'requests',
        :'text_align' => :'text_align',
        :'time' => :'time',
        :'title' => :'title',
        :'title_align' => :'title_align',
        :'title_size' => :'title_size',
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
        :'autoscale' => :'Boolean',
        :'custom_links' => :'Array<WidgetCustomLink>',
        :'custom_unit' => :'String',
        :'precision' => :'Integer',
        :'requests' => :'Array<QueryValueWidgetRequest>',
        :'text_align' => :'WidgetTextAlign',
        :'time' => :'WidgetTime',
        :'title' => :'String',
        :'title_align' => :'WidgetTextAlign',
        :'title_size' => :'String',
        :'type' => :'QueryValueWidgetDefinitionType'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::QueryValueWidgetDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::QueryValueWidgetDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'autoscale')
        self.autoscale = attributes[:'autoscale']
      end

      if attributes.key?(:'custom_links')
        if (value = attributes[:'custom_links']).is_a?(Array)
          self.custom_links = value
        end
      end

      if attributes.key?(:'custom_unit')
        self.custom_unit = attributes[:'custom_unit']
      end

      if attributes.key?(:'precision')
        self.precision = attributes[:'precision']
      end

      if attributes.key?(:'requests')
        if (value = attributes[:'requests']).is_a?(Array)
          self.requests = value
        end
      end

      if attributes.key?(:'text_align')
        self.text_align = attributes[:'text_align']
      end

      if attributes.key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'title_align')
        self.title_align = attributes[:'title_align']
      end

      if attributes.key?(:'title_size')
        self.title_size = attributes[:'title_size']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'query_value'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if @requests.nil?
        invalid_properties.push('invalid value for "requests", requests cannot be nil.')
      end
      if @requests.length > 1
        invalid_properties.push('invalid value for "requests", number of items must be less than or equal to 1.')
      end
      if @requests.length < 1
        invalid_properties.push('invalid value for "requests", number of items must be greater than or equal to 1.')
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
      return false if @requests.nil?
      return false if @requests.length > 1
      return false if @requests.length < 1
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param requests [Object] Object to be assigned
    def requests=(requests)
      if @requests.nil?
        fail ArgumentError, 'invalid value for "requests", requests cannot be nil.'
      end
      if requests.length > 1
        fail ArgumentError, 'invalid value for "requests", number of items must be less than or equal to 1.'
      end
      if requests.length < 1
        fail ArgumentError, 'invalid value for "requests", number of items must be greater than or equal to 1.'
      end
      @requests = requests
    end

    # Custom attribute writer method with validation
    # @param text_align [Object] Object to be assigned
    def text_align=(text_align)
      validator = EnumAttributeValidator.new('WidgetTextAlign', ['center', 'left', 'right'])
      unless validator.valid?(text_align)
        fail ArgumentError, "invalid value for \"text_align\", must be one of #{validator.allowable_values}."
      end
      @text_align = text_align
    end

    # Custom attribute writer method with validation
    # @param title_align [Object] Object to be assigned
    def title_align=(title_align)
      validator = EnumAttributeValidator.new('WidgetTextAlign', ['center', 'left', 'right'])
      unless validator.valid?(title_align)
        fail ArgumentError, "invalid value for \"title_align\", must be one of #{validator.allowable_values}."
      end
      @title_align = title_align
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('QueryValueWidgetDefinitionType', ['query_value'])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      if @type.nil?
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
          autoscale == o.autoscale &&
          custom_links == o.custom_links &&
          custom_unit == o.custom_unit &&
          precision == o.precision &&
          requests == o.requests &&
          text_align == o.text_align &&
          time == o.time &&
          title == o.title &&
          title_align == o.title_align &&
          title_size == o.title_size &&
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
      [autoscale, custom_links, custom_unit, precision, requests, text_align, time, title, title_align, title_size, type].hash
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
