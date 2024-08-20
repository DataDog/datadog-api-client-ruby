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
  # The treemap visualization enables you to display hierarchical and nested data. It is well suited for queries that describe part-whole relationships, such as resource usage by availability zone, data center, or team.
  class TreeMapWidgetDefinition
    include BaseGenericModel

    # (deprecated) The attribute formerly used to determine color in the widget.
    attr_accessor :color_by

    # List of custom links.
    attr_accessor :custom_links

    # (deprecated) The attribute formerly used to group elements in the widget.
    attr_accessor :group_by

    # List of treemap widget requests.
    attr_reader :requests

    # (deprecated) The attribute formerly used to determine size in the widget.
    attr_accessor :size_by

    # Time setting for the widget.
    attr_accessor :time

    # Title of your widget.
    attr_accessor :title

    # Type of the treemap widget.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'color_by' => :'color_by',
        :'custom_links' => :'custom_links',
        :'group_by' => :'group_by',
        :'requests' => :'requests',
        :'size_by' => :'size_by',
        :'time' => :'time',
        :'title' => :'title',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'color_by' => :'TreeMapColorBy',
        :'custom_links' => :'Array<WidgetCustomLink>',
        :'group_by' => :'TreeMapGroupBy',
        :'requests' => :'Array<TreeMapWidgetRequest>',
        :'size_by' => :'TreeMapSizeBy',
        :'time' => :'WidgetTime',
        :'title' => :'String',
        :'type' => :'TreeMapWidgetDefinitionType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::TreeMapWidgetDefinition` initialize method"
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

      if attributes.key?(:'color_by')
        self.color_by = attributes[:'color_by']
      end

      if attributes.key?(:'custom_links')
        if (value = attributes[:'custom_links']).is_a?(Array)
          self.custom_links = value
        end
      end

      if attributes.key?(:'group_by')
        self.group_by = attributes[:'group_by']
      end

      if attributes.key?(:'requests')
        if (value = attributes[:'requests']).is_a?(Array)
          self.requests = value
        end
      end

      if attributes.key?(:'size_by')
        self.size_by = attributes[:'size_by']
      end

      if attributes.key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
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
          color_by == o.color_by &&
          custom_links == o.custom_links &&
          group_by == o.group_by &&
          requests == o.requests &&
          size_by == o.size_by &&
          time == o.time &&
          title == o.title &&
          type == o.type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [color_by, custom_links, group_by, requests, size_by, time, title, type].hash
    end
  end
end
