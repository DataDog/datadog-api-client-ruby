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
  # Pipelines and processors operate on incoming logs,
  # parsing and transforming them into structured attributes for easier querying.
  # 
  # **Note**: These endpoints are only available for admin users.
  # Make sure to use an application key created by an admin.
  class LogsPipeline
    include BaseGenericModel

    # Filter for logs.
    attr_accessor :filter

    # ID of the pipeline.
    attr_accessor :id

    # Whether or not the pipeline is enabled.
    attr_accessor :is_enabled

    # Whether or not the pipeline can be edited.
    attr_accessor :is_read_only

    # Name of the pipeline.
    attr_reader :name

    # Ordered list of processors in this pipeline.
    attr_accessor :processors

    # Type of pipeline.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'filter' => :'filter',
        :'id' => :'id',
        :'is_enabled' => :'is_enabled',
        :'is_read_only' => :'is_read_only',
        :'name' => :'name',
        :'processors' => :'processors',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'filter' => :'LogsFilter',
        :'id' => :'String',
        :'is_enabled' => :'Boolean',
        :'is_read_only' => :'Boolean',
        :'name' => :'String',
        :'processors' => :'Array<LogsProcessor>',
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsPipeline` initialize method"
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

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'is_read_only')
        self.is_read_only = attributes[:'is_read_only']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'processors')
        if (value = attributes[:'processors']).is_a?(Array)
          self.processors = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @name.nil?
      true
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

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          filter == o.filter &&
          id == o.id &&
          is_enabled == o.is_enabled &&
          is_read_only == o.is_read_only &&
          name == o.name &&
          processors == o.processors &&
          type == o.type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [filter, id, is_enabled, is_read_only, name, processors, type].hash
    end
  end
end
