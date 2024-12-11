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
  # The metadata object associated with how a dashboard has been/will be shared.
  class SharedDashboard
    include BaseGenericModel

    # User who shared the dashboard.
    attr_accessor :author

    # Date the dashboard was shared.
    attr_accessor :created_at

    # ID of the dashboard to share.
    attr_reader :dashboard_id

    # The type of the associated private dashboard.
    attr_reader :dashboard_type

    # Object containing the live span selection for the dashboard.
    attr_accessor :global_time

    # Whether to allow viewers to select a different global time setting for the shared dashboard.
    attr_accessor :global_time_selectable_enabled

    # URL of the shared dashboard.
    attr_accessor :public_url

    # List of objects representing template variables on the shared dashboard which can have selectable values.
    attr_accessor :selectable_template_vars

    # List of email addresses that can receive an invitation to access to the shared dashboard.
    attr_accessor :share_list

    # Type of sharing access (either open to anyone who has the public URL or invite-only).
    attr_accessor :share_type

    # A unique token assigned to the shared dashboard.
    attr_accessor :token

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'author' => :'author',
        :'created_at' => :'created_at',
        :'dashboard_id' => :'dashboard_id',
        :'dashboard_type' => :'dashboard_type',
        :'global_time' => :'global_time',
        :'global_time_selectable_enabled' => :'global_time_selectable_enabled',
        :'public_url' => :'public_url',
        :'selectable_template_vars' => :'selectable_template_vars',
        :'share_list' => :'share_list',
        :'share_type' => :'share_type',
        :'token' => :'token'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'author' => :'SharedDashboardAuthor',
        :'created_at' => :'Time',
        :'dashboard_id' => :'String',
        :'dashboard_type' => :'DashboardType',
        :'global_time' => :'DashboardGlobalTime',
        :'global_time_selectable_enabled' => :'Boolean',
        :'public_url' => :'String',
        :'selectable_template_vars' => :'Array<SelectableTemplateVariableItems>',
        :'share_list' => :'Array<String>',
        :'share_type' => :'DashboardShareType',
        :'token' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'global_time_selectable_enabled',
        :'selectable_template_vars',
        :'share_list',
        :'share_type',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SharedDashboard` initialize method"
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

      if attributes.key?(:'author')
        self.author = attributes[:'author']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'dashboard_id')
        self.dashboard_id = attributes[:'dashboard_id']
      end

      if attributes.key?(:'dashboard_type')
        self.dashboard_type = attributes[:'dashboard_type']
      end

      if attributes.key?(:'global_time')
        self.global_time = attributes[:'global_time']
      end

      if attributes.key?(:'global_time_selectable_enabled')
        self.global_time_selectable_enabled = attributes[:'global_time_selectable_enabled']
      end

      if attributes.key?(:'public_url')
        self.public_url = attributes[:'public_url']
      end

      if attributes.key?(:'selectable_template_vars')
        if (value = attributes[:'selectable_template_vars']).is_a?(Array)
          self.selectable_template_vars = value
        end
      end

      if attributes.key?(:'share_list')
        if (value = attributes[:'share_list']).is_a?(Array)
          self.share_list = value
        end
      end

      if attributes.key?(:'share_type')
        self.share_type = attributes[:'share_type']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @dashboard_id.nil?
      return false if @dashboard_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param dashboard_id [Object] Object to be assigned
    # @!visibility private
    def dashboard_id=(dashboard_id)
      if dashboard_id.nil?
        fail ArgumentError, 'invalid value for "dashboard_id", dashboard_id cannot be nil.'
      end
      @dashboard_id = dashboard_id
    end

    # Custom attribute writer method with validation
    # @param dashboard_type [Object] Object to be assigned
    # @!visibility private
    def dashboard_type=(dashboard_type)
      if dashboard_type.nil?
        fail ArgumentError, 'invalid value for "dashboard_type", dashboard_type cannot be nil.'
      end
      @dashboard_type = dashboard_type
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
          author == o.author &&
          created_at == o.created_at &&
          dashboard_id == o.dashboard_id &&
          dashboard_type == o.dashboard_type &&
          global_time == o.global_time &&
          global_time_selectable_enabled == o.global_time_selectable_enabled &&
          public_url == o.public_url &&
          selectable_template_vars == o.selectable_template_vars &&
          share_list == o.share_list &&
          share_type == o.share_type &&
          token == o.token &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [author, created_at, dashboard_id, dashboard_type, global_time, global_time_selectable_enabled, public_url, selectable_template_vars, share_list, share_type, token, additional_properties].hash
    end
  end
end
