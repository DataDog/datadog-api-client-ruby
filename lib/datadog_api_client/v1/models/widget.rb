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
  # Information about widget.
  # 
  # **Note**: The `layout` property is required for widgets in dashboards with `free` `layout_type`.
  #       For the **new dashboard layout**, the `layout` property depends on the `reflow_type` of the dashboard.
  #       - If `reflow_type` is `fixed`, `layout` is required.
  #       - If `reflow_type` is `auto`, `layout` should not be set.
  class Widget
    include BaseGenericModel

    # [Definition of the widget](https://docs.datadoghq.com/dashboards/widgets/).
    attr_reader :definition

    # ID of the widget.
    attr_accessor :id

    # The layout for a widget on a `free` or **new dashboard layout** dashboard.
    attr_accessor :layout

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'definition' => :'definition',
        :'id' => :'id',
        :'layout' => :'layout'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'definition' => :'WidgetDefinition',
        :'id' => :'Integer',
        :'layout' => :'WidgetLayout'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::Widget` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::Widget`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'definition')
        self.definition = attributes[:'definition']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'layout')
        self.layout = attributes[:'layout']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @definition.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param definition [Object] Object to be assigned
    # @!visibility private
    def definition=(definition)
      if definition.nil?
        fail ArgumentError, 'invalid value for "definition", definition cannot be nil.'
      end
      @definition = definition
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          definition == o.definition &&
          id == o.id &&
          layout == o.layout
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [definition, id, layout].hash
    end
  end
end
