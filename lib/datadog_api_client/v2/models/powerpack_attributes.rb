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
  # Powerpack attribute object.
  class PowerpackAttributes
    include BaseGenericModel

    # Description of this powerpack.
    attr_accessor :description

    # Powerpack group widget definition object.
    attr_reader :group_widget

    # Name of the powerpack.
    attr_reader :name

    # List of tags to identify this powerpack.
    attr_reader :tags

    # List of template variables for this powerpack.
    attr_accessor :template_variables

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'description' => :'description',
        :'group_widget' => :'group_widget',
        :'name' => :'name',
        :'tags' => :'tags',
        :'template_variables' => :'template_variables'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'description' => :'String',
        :'group_widget' => :'PowerpackGroupWidget',
        :'name' => :'String',
        :'tags' => :'Array<String>',
        :'template_variables' => :'Array<PowerpackTemplateVariable>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::PowerpackAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::PowerpackAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'group_widget')
        self.group_widget = attributes[:'group_widget']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'template_variables')
        if (value = attributes[:'template_variables']).is_a?(Array)
          self.template_variables = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @group_widget.nil?
      return false if @name.nil?
      return false if !@tags.nil? && @tags.length > 8
      true
    end

    # Custom attribute writer method with validation
    # @param group_widget [Object] Object to be assigned
    # @!visibility private
    def group_widget=(group_widget)
      if group_widget.nil?
        fail ArgumentError, 'invalid value for "group_widget", group_widget cannot be nil.'
      end
      @group_widget = group_widget
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
    # @param tags [Object] Object to be assigned
    # @!visibility private
    def tags=(tags)
      if !tags.nil? && tags.length > 8
        fail ArgumentError, 'invalid value for "tags", number of items must be less than or equal to 8.'
      end
      @tags = tags
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          description == o.description &&
          group_widget == o.group_widget &&
          name == o.name &&
          tags == o.tags &&
          template_variables == o.template_variables
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [description, group_widget, name, tags, template_variables].hash
    end
  end
end
