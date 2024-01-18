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
  # A dashboard is Datadog’s tool for visually tracking, analyzing, and displaying
  # key performance metrics, which enable you to monitor the health of your infrastructure.
  class Dashboard
    include BaseGenericModel

    # Identifier of the dashboard author.
    attr_accessor :author_handle

    # Name of the dashboard author.
    attr_accessor :author_name

    # Creation date of the dashboard.
    attr_accessor :created_at

    # Description of the dashboard.
    attr_accessor :description

    # ID of the dashboard.
    attr_accessor :id

    # Whether this dashboard is read-only. If True, only the author and admins can make changes to it.
    #
    # This property is deprecated; please use the [Restriction Policies API](https://docs.datadoghq.com/api/latest/restriction-policies/) instead to manage write authorization for individual dashboards.
    attr_accessor :is_read_only

    # Layout type of the dashboard.
    attr_reader :layout_type

    # Modification date of the dashboard.
    attr_accessor :modified_at

    # List of handles of users to notify when changes are made to this dashboard.
    attr_accessor :notify_list

    # Reflow type for a **new dashboard layout** dashboard. Set this only when layout type is 'ordered'.
    # If set to 'fixed', the dashboard expects all widgets to have a layout, and if it's set to 'auto',
    # widgets should not have layouts.
    attr_accessor :reflow_type

    # A list of role identifiers. Only the author and users associated with at least one of these roles can edit this dashboard.
    #
    # This property is deprecated; please use the [Restriction Policies API](https://docs.datadoghq.com/api/latest/restriction-policies/) instead to manage write authorization for individual dashboards.
    attr_accessor :restricted_roles

    # List of team names representing ownership of a dashboard.
    attr_reader :tags

    # Array of template variables saved views.
    attr_accessor :template_variable_presets

    # List of template variables for this dashboard.
    attr_accessor :template_variables

    # Title of the dashboard.
    attr_reader :title

    # The URL of the dashboard.
    attr_accessor :url

    # List of widgets to display on the dashboard.
    attr_reader :widgets

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'author_handle' => :'author_handle',
        :'author_name' => :'author_name',
        :'created_at' => :'created_at',
        :'description' => :'description',
        :'id' => :'id',
        :'is_read_only' => :'is_read_only',
        :'layout_type' => :'layout_type',
        :'modified_at' => :'modified_at',
        :'notify_list' => :'notify_list',
        :'reflow_type' => :'reflow_type',
        :'restricted_roles' => :'restricted_roles',
        :'tags' => :'tags',
        :'template_variable_presets' => :'template_variable_presets',
        :'template_variables' => :'template_variables',
        :'title' => :'title',
        :'url' => :'url',
        :'widgets' => :'widgets'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'author_handle' => :'String',
        :'author_name' => :'String',
        :'created_at' => :'Time',
        :'description' => :'String',
        :'id' => :'String',
        :'is_read_only' => :'Boolean',
        :'layout_type' => :'DashboardLayoutType',
        :'modified_at' => :'Time',
        :'notify_list' => :'Array<String>',
        :'reflow_type' => :'DashboardReflowType',
        :'restricted_roles' => :'Array<String>',
        :'tags' => :'Array<String>',
        :'template_variable_presets' => :'Array<DashboardTemplateVariablePreset>',
        :'template_variables' => :'Array<DashboardTemplateVariable>',
        :'title' => :'String',
        :'url' => :'String',
        :'widgets' => :'Array<Widget>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'author_name',
        :'description',
        :'notify_list',
        :'tags',
        :'template_variable_presets',
        :'template_variables',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::Dashboard` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::Dashboard`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'author_handle')
        self.author_handle = attributes[:'author_handle']
      end

      if attributes.key?(:'author_name')
        self.author_name = attributes[:'author_name']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_read_only')
        self.is_read_only = attributes[:'is_read_only']
      end

      if attributes.key?(:'layout_type')
        self.layout_type = attributes[:'layout_type']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'notify_list')
        if (value = attributes[:'notify_list']).is_a?(Array)
          self.notify_list = value
        end
      end

      if attributes.key?(:'reflow_type')
        self.reflow_type = attributes[:'reflow_type']
      end

      if attributes.key?(:'restricted_roles')
        if (value = attributes[:'restricted_roles']).is_a?(Array)
          self.restricted_roles = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'template_variable_presets')
        if (value = attributes[:'template_variable_presets']).is_a?(Array)
          self.template_variable_presets = value
        end
      end

      if attributes.key?(:'template_variables')
        if (value = attributes[:'template_variables']).is_a?(Array)
          self.template_variables = value
        end
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
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
      return false if !@tags.nil? && @tags.length > 5
      return false if @title.nil?
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
    # @param tags [Object] Object to be assigned
    # @!visibility private
    def tags=(tags)
      if !tags.nil? && tags.length > 5
        fail ArgumentError, 'invalid value for "tags", number of items must be less than or equal to 5.'
      end
      @tags = tags
    end

    # Custom attribute writer method with validation
    # @param title [Object] Object to be assigned
    # @!visibility private
    def title=(title)
      if title.nil?
        fail ArgumentError, 'invalid value for "title", title cannot be nil.'
      end
      @title = title
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

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          author_handle == o.author_handle &&
          author_name == o.author_name &&
          created_at == o.created_at &&
          description == o.description &&
          id == o.id &&
          is_read_only == o.is_read_only &&
          layout_type == o.layout_type &&
          modified_at == o.modified_at &&
          notify_list == o.notify_list &&
          reflow_type == o.reflow_type &&
          restricted_roles == o.restricted_roles &&
          tags == o.tags &&
          template_variable_presets == o.template_variable_presets &&
          template_variables == o.template_variables &&
          title == o.title &&
          url == o.url &&
          widgets == o.widgets
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [author_handle, author_name, created_at, description, id, is_read_only, layout_type, modified_at, notify_list, reflow_type, restricted_roles, tags, template_variable_presets, template_variables, title, url, widgets].hash
    end
  end
end
