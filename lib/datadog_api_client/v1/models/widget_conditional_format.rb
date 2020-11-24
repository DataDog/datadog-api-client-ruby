=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Define a conditional format for the widget.
  class WidgetConditionalFormat
    attr_accessor :comparator

    # Color palette to apply to the background, same values available as palette.
    attr_accessor :custom_bg_color

    # Color palette to apply to the foreground, same values available as palette.
    attr_accessor :custom_fg_color

    # True hides values.
    attr_accessor :hide_value

    # Displays an image as the background.
    attr_accessor :image_url

    # Metric from the request to correlate this conditional format with.
    attr_accessor :metric

    attr_accessor :palette

    # Defines the displayed timeframe.
    attr_accessor :timeframe

    # Value for the comparator.
    attr_accessor :value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'comparator' => :'comparator',
        :'custom_bg_color' => :'custom_bg_color',
        :'custom_fg_color' => :'custom_fg_color',
        :'hide_value' => :'hide_value',
        :'image_url' => :'image_url',
        :'metric' => :'metric',
        :'palette' => :'palette',
        :'timeframe' => :'timeframe',
        :'value' => :'value'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'comparator' => :'WidgetComparator',
        :'custom_bg_color' => :'String',
        :'custom_fg_color' => :'String',
        :'hide_value' => :'Boolean',
        :'image_url' => :'String',
        :'metric' => :'String',
        :'palette' => :'WidgetPalette',
        :'timeframe' => :'String',
        :'value' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::WidgetConditionalFormat` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::WidgetConditionalFormat`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'comparator')
        self.comparator = attributes[:'comparator']
      end

      if attributes.key?(:'custom_bg_color')
        self.custom_bg_color = attributes[:'custom_bg_color']
      end

      if attributes.key?(:'custom_fg_color')
        self.custom_fg_color = attributes[:'custom_fg_color']
      end

      if attributes.key?(:'hide_value')
        self.hide_value = attributes[:'hide_value']
      end

      if attributes.key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.key?(:'metric')
        self.metric = attributes[:'metric']
      end

      if attributes.key?(:'palette')
        self.palette = attributes[:'palette']
      end

      if attributes.key?(:'timeframe')
        self.timeframe = attributes[:'timeframe']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @comparator.nil?
        invalid_properties.push('invalid value for "comparator", comparator cannot be nil.')
      end

      if @palette.nil?
        invalid_properties.push('invalid value for "palette", palette cannot be nil.')
      end

      if @value.nil?
        invalid_properties.push('invalid value for "value", value cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @comparator.nil?
      return false if @palette.nil?
      return false if @value.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          comparator == o.comparator &&
          custom_bg_color == o.custom_bg_color &&
          custom_fg_color == o.custom_fg_color &&
          hide_value == o.hide_value &&
          image_url == o.image_url &&
          metric == o.metric &&
          palette == o.palette &&
          timeframe == o.timeframe &&
          value == o.value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [comparator, custom_bg_color, custom_fg_color, hide_value, image_url, metric, palette, timeframe, value].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
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
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
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
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
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
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
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
