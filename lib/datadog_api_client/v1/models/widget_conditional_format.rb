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
  # Define a conditional format for the widget.
  class WidgetConditionalFormat
    include BaseGenericModel

    # Comparator to apply.
    attr_reader :comparator

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

    # Color palette to apply.
    attr_reader :palette

    # Defines the displayed timeframe.
    attr_accessor :timeframe

    # Value for the comparator.
    attr_reader :value

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
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

    # Attribute type mapping.
    # @!visibility private
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

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
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

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @comparator.nil?
      return false if @palette.nil?
      return false if @value.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param comparator [Object] Object to be assigned
    # @!visibility private
    def comparator=(comparator)
      if comparator.nil?
        fail ArgumentError, 'invalid value for "comparator", comparator cannot be nil.'
      end
      @comparator = comparator
    end

    # Custom attribute writer method with validation
    # @param palette [Object] Object to be assigned
    # @!visibility private
    def palette=(palette)
      if palette.nil?
        fail ArgumentError, 'invalid value for "palette", palette cannot be nil.'
      end
      @palette = palette
    end

    # Custom attribute writer method with validation
    # @param value [Object] Object to be assigned
    # @!visibility private
    def value=(value)
      if value.nil?
        fail ArgumentError, 'invalid value for "value", value cannot be nil.'
      end
      @value = value
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
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

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [comparator, custom_bg_color, custom_fg_color, hide_value, image_url, metric, palette, timeframe, value].hash
    end
  end
end
