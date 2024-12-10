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
  # Powerpack inner widget layout.
  class PowerpackInnerWidgetLayout
    include BaseGenericModel

    # The height of the widget. Should be a non-negative integer.
    attr_reader :height

    # The width of the widget. Should be a non-negative integer.
    attr_reader :width

    # The position of the widget on the x (horizontal) axis. Should be a non-negative integer.
    attr_reader :x

    # The position of the widget on the y (vertical) axis. Should be a non-negative integer.
    attr_reader :y

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'height' => :'height',
        :'width' => :'width',
        :'x' => :'x',
        :'y' => :'y'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'height' => :'Integer',
        :'width' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::PowerpackInnerWidgetLayout` initialize method"
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

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.key?(:'x')
        self.x = attributes[:'x']
      end

      if attributes.key?(:'y')
        self.y = attributes[:'y']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @height.nil?
      return false if @height < 0
      return false if @width.nil?
      return false if @width < 0
      return false if @x.nil?
      return false if @x < 0
      return false if @y.nil?
      return false if @y < 0
      true
    end

    # Custom attribute writer method with validation
    # @param height [Object] Object to be assigned
    # @!visibility private
    def height=(height)
      if height.nil?
        fail ArgumentError, 'invalid value for "height", height cannot be nil.'
      end
      if height < 0
        fail ArgumentError, 'invalid value for "height", must be greater than or equal to 0.'
      end
      @height = height
    end

    # Custom attribute writer method with validation
    # @param width [Object] Object to be assigned
    # @!visibility private
    def width=(width)
      if width.nil?
        fail ArgumentError, 'invalid value for "width", width cannot be nil.'
      end
      if width < 0
        fail ArgumentError, 'invalid value for "width", must be greater than or equal to 0.'
      end
      @width = width
    end

    # Custom attribute writer method with validation
    # @param x [Object] Object to be assigned
    # @!visibility private
    def x=(x)
      if x.nil?
        fail ArgumentError, 'invalid value for "x", x cannot be nil.'
      end
      if x < 0
        fail ArgumentError, 'invalid value for "x", must be greater than or equal to 0.'
      end
      @x = x
    end

    # Custom attribute writer method with validation
    # @param y [Object] Object to be assigned
    # @!visibility private
    def y=(y)
      if y.nil?
        fail ArgumentError, 'invalid value for "y", y cannot be nil.'
      end
      if y < 0
        fail ArgumentError, 'invalid value for "y", must be greater than or equal to 0.'
      end
      @y = y
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
          height == o.height &&
          width == o.width &&
          x == o.x &&
          y == o.y &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [height, width, x, y, additional_properties].hash
    end
  end
end
