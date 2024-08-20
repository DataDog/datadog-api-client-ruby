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
  # The number of profiled hosts for each hour for a given organization.
  class UsageProfilingHour
    include BaseGenericModel

    # Contains the total number of profiled Azure app services reporting during a given hour.
    attr_accessor :aas_count

    # Get average number of container agents for that hour.
    attr_accessor :avg_container_agent_count

    # Contains the total number of profiled hosts reporting during a given hour.
    attr_accessor :host_count

    # The hour for the usage.
    attr_accessor :hour

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aas_count' => :'aas_count',
        :'avg_container_agent_count' => :'avg_container_agent_count',
        :'host_count' => :'host_count',
        :'hour' => :'hour',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aas_count' => :'Integer',
        :'avg_container_agent_count' => :'Integer',
        :'host_count' => :'Integer',
        :'hour' => :'Time',
        :'org_name' => :'String',
        :'public_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'aas_count',
        :'avg_container_agent_count',
        :'host_count',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageProfilingHour` initialize method"
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

      if attributes.key?(:'aas_count')
        self.aas_count = attributes[:'aas_count']
      end

      if attributes.key?(:'avg_container_agent_count')
        self.avg_container_agent_count = attributes[:'avg_container_agent_count']
      end

      if attributes.key?(:'host_count')
        self.host_count = attributes[:'host_count']
      end

      if attributes.key?(:'hour')
        self.hour = attributes[:'hour']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aas_count == o.aas_count &&
          avg_container_agent_count == o.avg_container_agent_count &&
          host_count == o.host_count &&
          hour == o.hour &&
          org_name == o.org_name &&
          public_id == o.public_id
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aas_count, avg_container_agent_count, host_count, hour, org_name, public_id].hash
    end
  end
end
