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
  # Object describing the device used to perform the Synthetic test.
  class SyntheticsDevice
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Screen height of the device.
    attr_accessor :height

    # The device ID.
    attr_accessor :id

    # Whether or not the device is a mobile.
    attr_accessor :is_mobile

    # The device name.
    attr_accessor :name

    # Screen width of the device.
    attr_accessor :width

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'height' => :'height',
        :'id' => :'id',
        :'is_mobile' => :'isMobile',
        :'name' => :'name',
        :'width' => :'width'
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
        :'height' => :'Integer',
        :'id' => :'SyntheticsDeviceID',
        :'is_mobile' => :'Boolean',
        :'name' => :'String',
        :'width' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsDevice` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsDevice`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_mobile')
        self.is_mobile = attributes[:'is_mobile']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if @height.nil?
        invalid_properties.push('invalid value for "height", height cannot be nil.')
      end
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end
      if @width.nil?
        invalid_properties.push('invalid value for "width", width cannot be nil.')
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @height.nil?
      return false if @id.nil?
      return false if @name.nil?
      return false if @width.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param height [Object] Object to be assigned
    # @!visibility private
    def height=(height)
      if height.nil?
        fail ArgumentError, 'invalid value for "height", height cannot be nil.'
      end
      @height = height
    end

    # Custom attribute writer method with validation
    # @param id [Object] Object to be assigned
    # @!visibility private
    def id=(id)
      if id.nil?
        fail ArgumentError, 'invalid value for "id", id cannot be nil.'
      end
      @id = id
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
    # @param width [Object] Object to be assigned
    # @!visibility private
    def width=(width)
      if width.nil?
        fail ArgumentError, 'invalid value for "width", width cannot be nil.'
      end
      @width = width
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          height == o.height &&
          id == o.id &&
          is_mobile == o.is_mobile &&
          name == o.name &&
          width == o.width
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
      [height, id, is_mobile, name, width].hash
    end
  end
end
