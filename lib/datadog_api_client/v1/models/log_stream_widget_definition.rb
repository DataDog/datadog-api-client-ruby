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
  # The Log Stream displays a log flow matching the defined query. Only available on FREE layout dashboards.
  class LogStreamWidgetDefinition
    include BaseGenericModel

    # Which columns to display on the widget.
    attr_accessor :columns

    # An array of index names to query in the stream. Use [] to query all indexes at once.
    attr_accessor :indexes

    # ID of the log set to use.
    attr_accessor :logset

    # Amount of log lines to display
    attr_accessor :message_display

    # Query to filter the log stream with.
    attr_accessor :query

    # Whether to show the date column or not
    attr_accessor :show_date_column

    # Whether to show the message column or not
    attr_accessor :show_message_column

    # Which column and order to sort by
    attr_accessor :sort

    # Time setting for the widget.
    attr_accessor :time

    # Title of the widget.
    attr_accessor :title

    # How to align the text on the widget.
    attr_accessor :title_align

    # Size of the title.
    attr_accessor :title_size

    # Type of the log stream widget.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'columns' => :'columns',
        :'indexes' => :'indexes',
        :'logset' => :'logset',
        :'message_display' => :'message_display',
        :'query' => :'query',
        :'show_date_column' => :'show_date_column',
        :'show_message_column' => :'show_message_column',
        :'sort' => :'sort',
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
        :'columns' => :'Array<String>',
        :'indexes' => :'Array<String>',
        :'logset' => :'String',
        :'message_display' => :'WidgetMessageDisplay',
        :'query' => :'String',
        :'show_date_column' => :'Boolean',
        :'show_message_column' => :'Boolean',
        :'sort' => :'WidgetFieldSort',
        :'time' => :'WidgetTime',
        :'title' => :'String',
        :'title_align' => :'WidgetTextAlign',
        :'title_size' => :'String',
        :'type' => :'LogStreamWidgetDefinitionType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogStreamWidgetDefinition` initialize method"
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

      if attributes.key?(:'columns')
        if (value = attributes[:'columns']).is_a?(Array)
          self.columns = value
        end
      end

      if attributes.key?(:'indexes')
        if (value = attributes[:'indexes']).is_a?(Array)
          self.indexes = value
        end
      end

      if attributes.key?(:'logset')
        self.logset = attributes[:'logset']
      end

      if attributes.key?(:'message_display')
        self.message_display = attributes[:'message_display']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'show_date_column')
        self.show_date_column = attributes[:'show_date_column']
      end

      if attributes.key?(:'show_message_column')
        self.show_message_column = attributes[:'show_message_column']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
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
      return false if @type.nil?
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
          columns == o.columns &&
          indexes == o.indexes &&
          logset == o.logset &&
          message_display == o.message_display &&
          query == o.query &&
          show_date_column == o.show_date_column &&
          show_message_column == o.show_message_column &&
          sort == o.sort &&
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
      [columns, indexes, logset, message_display, query, show_date_column, show_message_column, sort, time, title, title_align, title_size, type].hash
    end
  end
end
