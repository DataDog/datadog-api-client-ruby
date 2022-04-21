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

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Identifier of the dashboard author.
    attr_accessor :author_handle

    # Creation date of the dashboard.
    attr_accessor :created_at

    # Description of the dashboard.
    attr_accessor :description

    # Dashboard identifier.
    attr_accessor :id

    # Whether this dashboard is read-only. If True, only the author and admins can make changes to it.
    attr_accessor :is_read_only

    # Layout type of the dashboard.
    attr_accessor :layout_type

    # Modification date of the dashboard.
    attr_accessor :modified_at

    # Title of the dashboard.
    attr_accessor :title

    # URL of the dashboard.
    attr_accessor :url

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

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
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

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::DashboardSummaryDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
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

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
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
          url == o.url
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [author_handle, created_at, description, id, is_read_only, layout_type, modified_at, title, url].hash
    end
  end
end
