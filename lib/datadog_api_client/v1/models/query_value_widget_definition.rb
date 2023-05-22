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
  # Query values display the current value of a given metric, APM, or log query.
  class QueryValueWidgetDefinition
    include BaseGenericModel

    # Whether to use auto-scaling or not.
    attr_accessor :autoscale

    # List of custom links.
    attr_accessor :custom_links

    # Display a unit of your choice on the widget.
    attr_accessor :custom_unit

    # Number of decimals to show. If not defined, the widget uses the raw value.
    attr_accessor :precision

    # Widget definition.
    attr_reader :requests

    # How to align the text on the widget.
    attr_accessor :text_align

    # Time setting for the widget.
    attr_accessor :time

    # Set a timeseries on the widget background.
    attr_accessor :timeseries_background

    # Title of your widget.
    attr_accessor :title

    # How to align the text on the widget.
    attr_accessor :title_align

    # Size of the title.
    attr_accessor :title_size

    # Type of the query value widget.
    attr_reader :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'autoscale' => :'autoscale',
        :'custom_links' => :'custom_links',
        :'custom_unit' => :'custom_unit',
        :'precision' => :'precision',
        :'requests' => :'requests',
        :'text_align' => :'text_align',
        :'time' => :'time',
        :'timeseries_background' => :'timeseries_background',
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
        :'autoscale' => :'Boolean',
        :'custom_links' => :'Array<WidgetCustomLink>',
        :'custom_unit' => :'String',
        :'precision' => :'Integer',
        :'requests' => :'Array<QueryValueWidgetRequest>',
        :'text_align' => :'WidgetTextAlign',
        :'time' => :'WidgetTime',
        :'timeseries_background' => :'TimeseriesBackground',
        :'title' => :'String',
        :'title_align' => :'WidgetTextAlign',
        :'title_size' => :'String',
        :'type' => :'QueryValueWidgetDefinitionType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::QueryValueWidgetDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::QueryValueWidgetDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'autoscale')
        self.autoscale = attributes[:'autoscale']
      end

      if attributes.key?(:'custom_links')
        if (value = attributes[:'custom_links']).is_a?(Array)
          self.custom_links = value
        end
      end

      if attributes.key?(:'custom_unit')
        self.custom_unit = attributes[:'custom_unit']
      end

      if attributes.key?(:'precision')
        self.precision = attributes[:'precision']
      end

      if attributes.key?(:'requests')
        if (value = attributes[:'requests']).is_a?(Array)
          self.requests = value
        end
      end

      if attributes.key?(:'text_align')
        self.text_align = attributes[:'text_align']
      end

      if attributes.key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.key?(:'timeseries_background')
        self.timeseries_background = attributes[:'timeseries_background']
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
      return false if @requests.nil?
      return false if @requests.length > 1
      return false if @requests.length < 1
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param requests [Object] Object to be assigned
    # @!visibility private
    def requests=(requests)
      if requests.nil?
        fail ArgumentError, 'invalid value for "requests", requests cannot be nil.'
      end
      if requests.length > 1
        fail ArgumentError, 'invalid value for "requests", number of items must be less than or equal to 1.'
      end
      if requests.length < 1
        fail ArgumentError, 'invalid value for "requests", number of items must be greater than or equal to 1.'
      end
      @requests = requests
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
          autoscale == o.autoscale &&
          custom_links == o.custom_links &&
          custom_unit == o.custom_unit &&
          precision == o.precision &&
          requests == o.requests &&
          text_align == o.text_align &&
          time == o.time &&
          timeseries_background == o.timeseries_background &&
          title == o.title &&
          title_align == o.title_align &&
          title_size == o.title_size &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [autoscale, custom_links, custom_unit, precision, requests, text_align, time, timeseries_background, title, title_align, title_size, type].hash
    end
  end
end
