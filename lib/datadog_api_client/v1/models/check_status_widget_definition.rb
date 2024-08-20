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
  # Check status shows the current status or number of results for any check performed.
  class CheckStatusWidgetDefinition
    include BaseGenericModel

    # Name of the check to use in the widget.
    attr_reader :check

    # Group reporting a single check.
    attr_accessor :group

    # List of tag prefixes to group by in the case of a cluster check.
    attr_accessor :group_by

    # The kind of grouping to use.
    attr_reader :grouping

    # List of tags used to filter the groups reporting a cluster check.
    attr_accessor :tags

    # Time setting for the widget.
    attr_accessor :time

    # Title of the widget.
    attr_accessor :title

    # How to align the text on the widget.
    attr_accessor :title_align

    # Size of the title.
    attr_accessor :title_size

    # Type of the check status widget.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'check' => :'check',
        :'group' => :'group',
        :'group_by' => :'group_by',
        :'grouping' => :'grouping',
        :'tags' => :'tags',
        :'time' => :'time',
        :'title' => :'title',
        :'title_align' => :'title_align',
        :'title_size' => :'title_size',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'check' => :'String',
        :'group' => :'String',
        :'group_by' => :'Array<String>',
        :'grouping' => :'WidgetGrouping',
        :'tags' => :'Array<String>',
        :'time' => :'WidgetTime',
        :'title' => :'String',
        :'title_align' => :'WidgetTextAlign',
        :'title_size' => :'String',
        :'type' => :'CheckStatusWidgetDefinitionType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::CheckStatusWidgetDefinition` initialize method"
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

      if attributes.key?(:'check')
        self.check = attributes[:'check']
      end

      if attributes.key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.key?(:'group_by')
        if (value = attributes[:'group_by']).is_a?(Array)
          self.group_by = value
        end
      end

      if attributes.key?(:'grouping')
        self.grouping = attributes[:'grouping']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
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
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @check.nil?
      return false if @grouping.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param check [Object] Object to be assigned
    # @!visibility private
    def check=(check)
      if check.nil?
        fail ArgumentError, 'invalid value for "check", check cannot be nil.'
      end
      @check = check
    end

    # Custom attribute writer method with validation
    # @param grouping [Object] Object to be assigned
    # @!visibility private
    def grouping=(grouping)
      if grouping.nil?
        fail ArgumentError, 'invalid value for "grouping", grouping cannot be nil.'
      end
      @grouping = grouping
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
          check == o.check &&
          group == o.group &&
          group_by == o.group_by &&
          grouping == o.grouping &&
          tags == o.tags &&
          time == o.time &&
          title == o.title &&
          title_align == o.title_align &&
          title_size == o.title_size &&
          type == o.type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [check, group, group_by, grouping, tags, time, title, title_align, title_size, type].hash
    end
  end
end
