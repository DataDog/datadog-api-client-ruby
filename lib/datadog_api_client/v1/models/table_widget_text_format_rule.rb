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
  # Text format rules.
  class TableWidgetTextFormatRule
    include BaseGenericModel

    # Hex representation of the custom background color. Used with custom background palette option.
    attr_accessor :custom_bg_color

    # Hex representation of the custom text color. Used with custom text palette option.
    attr_accessor :custom_fg_color

    # Match rule for the table widget text format.
    attr_reader :match

    # Color-on-color palette to highlight replaced text.
    attr_accessor :palette

    # Replace rule for the table widget text format.
    attr_accessor :replace

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'custom_bg_color' => :'custom_bg_color',
        :'custom_fg_color' => :'custom_fg_color',
        :'match' => :'match',
        :'palette' => :'palette',
        :'replace' => :'replace'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'custom_bg_color' => :'String',
        :'custom_fg_color' => :'String',
        :'match' => :'TableWidgetTextFormatMatch',
        :'palette' => :'TableWidgetTextFormatPalette',
        :'replace' => :'TableWidgetTextFormatReplace'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::TableWidgetTextFormatRule` initialize method"
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

      if attributes.key?(:'custom_bg_color')
        self.custom_bg_color = attributes[:'custom_bg_color']
      end

      if attributes.key?(:'custom_fg_color')
        self.custom_fg_color = attributes[:'custom_fg_color']
      end

      if attributes.key?(:'match')
        self.match = attributes[:'match']
      end

      if attributes.key?(:'palette')
        self.palette = attributes[:'palette']
      end

      if attributes.key?(:'replace')
        self.replace = attributes[:'replace']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @match.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param match [Object] Object to be assigned
    # @!visibility private
    def match=(match)
      if match.nil?
        fail ArgumentError, 'invalid value for "match", match cannot be nil.'
      end
      @match = match
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
          custom_bg_color == o.custom_bg_color &&
          custom_fg_color == o.custom_fg_color &&
          match == o.match &&
          palette == o.palette &&
          replace == o.replace &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [custom_bg_color, custom_fg_color, match, palette, replace, additional_properties].hash
    end
  end
end
