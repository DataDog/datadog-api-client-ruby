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
  # The image widget allows you to embed an image on your dashboard. An image can be a PNG, JPG, or animated GIF. Only available on FREE layout dashboards.
  class ImageWidgetDefinition
    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Whether to display a background or not.
    attr_accessor :has_background

    # Whether to display a border or not.
    attr_accessor :has_border

    # Horizontal alignment.
    attr_accessor :horizontal_align

    # Size of the margins around the image.
    # **Note**: `small` and `large` values are deprecated.
    attr_accessor :margin

    # How to size the image on the widget. The values are based on the image `object-fit` CSS properties.
    # **Note**: `zoom`, `fit` and `center` values are deprecated.
    attr_accessor :sizing

    # Type of the image widget.
    attr_accessor :type

    # URL of the image.
    attr_accessor :url

    # URL of the image in dark mode.
    attr_accessor :url_dark_theme

    # Vertical alignment.
    attr_accessor :vertical_align

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'has_background' => :'has_background',
        :'has_border' => :'has_border',
        :'horizontal_align' => :'horizontal_align',
        :'margin' => :'margin',
        :'sizing' => :'sizing',
        :'type' => :'type',
        :'url' => :'url',
        :'url_dark_theme' => :'url_dark_theme',
        :'vertical_align' => :'vertical_align'
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
        :'has_background' => :'Boolean',
        :'has_border' => :'Boolean',
        :'horizontal_align' => :'WidgetHorizontalAlign',
        :'margin' => :'WidgetMargin',
        :'sizing' => :'WidgetImageSizing',
        :'type' => :'ImageWidgetDefinitionType',
        :'url' => :'String',
        :'url_dark_theme' => :'String',
        :'vertical_align' => :'WidgetVerticalAlign'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ImageWidgetDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ImageWidgetDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'has_background')
        self.has_background = attributes[:'has_background']
      else
        self.has_background = true
      end

      if attributes.key?(:'has_border')
        self.has_border = attributes[:'has_border']
      else
        self.has_border = true
      end

      if attributes.key?(:'horizontal_align')
        self.horizontal_align = attributes[:'horizontal_align']
      end

      if attributes.key?(:'margin')
        self.margin = attributes[:'margin']
      end

      if attributes.key?(:'sizing')
        self.sizing = attributes[:'sizing']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'image'
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'url_dark_theme')
        self.url_dark_theme = attributes[:'url_dark_theme']
      end

      if attributes.key?(:'vertical_align')
        self.vertical_align = attributes[:'vertical_align']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end
      if @url.nil?
        invalid_properties.push('invalid value for "url", url cannot be nil.')
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @type.nil?
      return false if @url.nil?
      true
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

    # Custom attribute writer method with validation
    # @param url [Object] Object to be assigned
    # @!visibility private
    def url=(url)
      if url.nil?
        fail ArgumentError, 'invalid value for "url", url cannot be nil.'
      end
      @url = url
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          has_background == o.has_background &&
          has_border == o.has_border &&
          horizontal_align == o.horizontal_align &&
          margin == o.margin &&
          sizing == o.sizing &&
          type == o.type &&
          url == o.url &&
          url_dark_theme == o.url_dark_theme &&
          vertical_align == o.vertical_align
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
      [has_background, has_border, horizontal_align, margin, sizing, type, url, url_dark_theme, vertical_align].hash
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
