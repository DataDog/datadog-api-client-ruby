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
  # The notes and links widget is similar to free text widget, but allows for more formatting options.
  class NoteWidgetDefinition
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Background color of the note.
    attr_accessor :background_color

    # Content of the note.
    attr_accessor :content

    # Size of the text.
    attr_accessor :font_size

    # Whether to add padding or not.
    attr_accessor :has_padding

    # Whether to show a tick or not.
    attr_accessor :show_tick

    # How to align the text on the widget.
    attr_accessor :text_align

    # Define how you want to align the text on the widget.
    attr_accessor :tick_edge

    # Where to position the tick on an edge.
    attr_accessor :tick_pos

    # Type of the note widget.
    attr_accessor :type

    # Vertical alignment.
    attr_accessor :vertical_align

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'background_color' => :'background_color',
        :'content' => :'content',
        :'font_size' => :'font_size',
        :'has_padding' => :'has_padding',
        :'show_tick' => :'show_tick',
        :'text_align' => :'text_align',
        :'tick_edge' => :'tick_edge',
        :'tick_pos' => :'tick_pos',
        :'type' => :'type',
        :'vertical_align' => :'vertical_align'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'background_color' => :'String',
        :'content' => :'String',
        :'font_size' => :'String',
        :'has_padding' => :'Boolean',
        :'show_tick' => :'Boolean',
        :'text_align' => :'WidgetTextAlign',
        :'tick_edge' => :'WidgetTickEdge',
        :'tick_pos' => :'String',
        :'type' => :'NoteWidgetDefinitionType',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::NoteWidgetDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::NoteWidgetDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'background_color')
        self.background_color = attributes[:'background_color']
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.key?(:'font_size')
        self.font_size = attributes[:'font_size']
      end

      if attributes.key?(:'has_padding')
        self.has_padding = attributes[:'has_padding']
      end

      if attributes.key?(:'show_tick')
        self.show_tick = attributes[:'show_tick']
      end

      if attributes.key?(:'text_align')
        self.text_align = attributes[:'text_align']
      end

      if attributes.key?(:'tick_edge')
        self.tick_edge = attributes[:'tick_edge']
      end

      if attributes.key?(:'tick_pos')
        self.tick_pos = attributes[:'tick_pos']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'vertical_align')
        self.vertical_align = attributes[:'vertical_align']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @content.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param content [Object] Object to be assigned
    # @!visibility private
    def content=(content)
      if content.nil?
        fail ArgumentError, 'invalid value for "content", content cannot be nil.'
      end
      @content = content
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
          background_color == o.background_color &&
          content == o.content &&
          font_size == o.font_size &&
          has_padding == o.has_padding &&
          show_tick == o.show_tick &&
          text_align == o.text_align &&
          tick_edge == o.tick_edge &&
          tick_pos == o.tick_pos &&
          type == o.type &&
          vertical_align == o.vertical_align
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [background_color, content, font_size, has_padding, show_tick, text_align, tick_edge, tick_pos, type, vertical_align].hash
    end
  end
end
