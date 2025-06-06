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
  # Dashboard definition.
  class DashboardSummaryDefinition
    include BaseGenericModel

    # Identifier of the dashboard author.
    attr_accessor :author_handle

    # Creation date of the dashboard.
    attr_accessor :created_at

    # Description of the dashboard.
    attr_accessor :description

    # Dashboard identifier.
    attr_accessor :id

    # Whether this dashboard is read-only. If True, only the author and admins can make changes to it.
    #
    # This property is deprecated; please use the [Restriction Policies API](https://docs.datadoghq.com/api/latest/restriction-policies/) instead to manage write authorization for individual dashboards.
    attr_accessor :is_read_only

    # Layout type of the dashboard.
    attr_accessor :layout_type

    # Modification date of the dashboard.
    attr_accessor :modified_at

    # Title of the dashboard.
    attr_accessor :title

    # URL of the dashboard.
    attr_accessor :url

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'author_handle' => :'author_handle',
        :'created_at' => :'created_at',
        :'description' => :'description',
        :'id' => :'id',
        :'is_read_only' => :'is_read_only',
        :'layout_type' => :'layout_type',
        :'modified_at' => :'modified_at',
        :'title' => :'title',
        :'url' => :'url'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'author_handle' => :'String',
        :'created_at' => :'Time',
        :'description' => :'String',
        :'id' => :'String',
        :'is_read_only' => :'Boolean',
        :'layout_type' => :'DashboardLayoutType',
        :'modified_at' => :'Time',
        :'title' => :'String',
        :'url' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'description',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::DashboardSummaryDefinition` initialize method"
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

      if attributes.key?(:'author_handle')
        self.author_handle = attributes[:'author_handle']
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

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end
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
          author_handle == o.author_handle &&
          created_at == o.created_at &&
          description == o.description &&
          id == o.id &&
          is_read_only == o.is_read_only &&
          layout_type == o.layout_type &&
          modified_at == o.modified_at &&
          title == o.title &&
          url == o.url &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [author_handle, created_at, description, id, is_read_only, layout_type, modified_at, title, url, additional_properties].hash
    end
  end
end
