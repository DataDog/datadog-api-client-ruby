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
  # Powerpack group widget object.
  class PowerpackGroupWidgetDefinition
    include BaseGenericModel

    # Layout type of widgets.
    attr_reader :layout_type

    # Boolean indicating whether powerpack group title should be visible or not.
    attr_accessor :show_title

    # Name for the group widget.
    attr_accessor :title

    # Type of widget, must be group.
    attr_reader :type

    # Widgets inside the powerpack.
    attr_reader :widgets

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'layout_type' => :'layout_type',
        :'show_title' => :'show_title',
        :'title' => :'title',
        :'type' => :'type',
        :'widgets' => :'widgets'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'layout_type' => :'String',
        :'show_title' => :'Boolean',
        :'title' => :'String',
        :'type' => :'String',
        :'widgets' => :'Array<PowerpackInnerWidgets>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::PowerpackGroupWidgetDefinition` initialize method"
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

      if attributes.key?(:'layout_type')
        self.layout_type = attributes[:'layout_type']
      end

      if attributes.key?(:'show_title')
        self.show_title = attributes[:'show_title']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'widgets')
        if (value = attributes[:'widgets']).is_a?(Array)
          self.widgets = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @layout_type.nil?
      return false if @type.nil?
      return false if @widgets.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param layout_type [Object] Object to be assigned
    # @!visibility private
    def layout_type=(layout_type)
      if layout_type.nil?
        fail ArgumentError, 'invalid value for "layout_type", layout_type cannot be nil.'
      end
      @layout_type = layout_type
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
    # @param widgets [Object] Object to be assigned
    # @!visibility private
    def widgets=(widgets)
      if widgets.nil?
        fail ArgumentError, 'invalid value for "widgets", widgets cannot be nil.'
      end
      @widgets = widgets
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
          layout_type == o.layout_type &&
          show_title == o.show_title &&
          title == o.title &&
          type == o.type &&
          widgets == o.widgets
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [layout_type, show_title, title, type, widgets].hash
    end
  end
end
