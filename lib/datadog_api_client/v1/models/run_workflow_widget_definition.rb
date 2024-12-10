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
  # Run workflow is widget that allows you to run a workflow from a dashboard.
  class RunWorkflowWidgetDefinition
    include BaseGenericModel

    # List of custom links.
    attr_accessor :custom_links

    # Array of workflow inputs to map to dashboard template variables.
    attr_accessor :inputs

    # Time setting for the widget.
    attr_accessor :time

    # Title of your widget.
    attr_accessor :title

    # How to align the text on the widget.
    attr_accessor :title_align

    # Size of the title.
    attr_accessor :title_size

    # Type of the run workflow widget.
    attr_reader :type

    # Workflow id.
    attr_reader :workflow_id

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'custom_links' => :'custom_links',
        :'inputs' => :'inputs',
        :'time' => :'time',
        :'title' => :'title',
        :'title_align' => :'title_align',
        :'title_size' => :'title_size',
        :'type' => :'type',
        :'workflow_id' => :'workflow_id'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'custom_links' => :'Array<WidgetCustomLink>',
        :'inputs' => :'Array<RunWorkflowWidgetInput>',
        :'time' => :'WidgetTime',
        :'title' => :'String',
        :'title_align' => :'WidgetTextAlign',
        :'title_size' => :'String',
        :'type' => :'RunWorkflowWidgetDefinitionType',
        :'workflow_id' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::RunWorkflowWidgetDefinition` initialize method"
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

      if attributes.key?(:'custom_links')
        if (value = attributes[:'custom_links']).is_a?(Array)
          self.custom_links = value
        end
      end

      if attributes.key?(:'inputs')
        if (value = attributes[:'inputs']).is_a?(Array)
          self.inputs = value
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

      if attributes.key?(:'workflow_id')
        self.workflow_id = attributes[:'workflow_id']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @type.nil?
      return false if @workflow_id.nil?
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

    # Custom attribute writer method with validation
    # @param workflow_id [Object] Object to be assigned
    # @!visibility private
    def workflow_id=(workflow_id)
      if workflow_id.nil?
        fail ArgumentError, 'invalid value for "workflow_id", workflow_id cannot be nil.'
      end
      @workflow_id = workflow_id
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
          custom_links == o.custom_links &&
          inputs == o.inputs &&
          time == o.time &&
          title == o.title &&
          title_align == o.title_align &&
          title_size == o.title_size &&
          type == o.type &&
          workflow_id == o.workflow_id &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [custom_links, inputs, time, title, title_align, title_size, type, workflow_id, additional_properties].hash
    end
  end
end
