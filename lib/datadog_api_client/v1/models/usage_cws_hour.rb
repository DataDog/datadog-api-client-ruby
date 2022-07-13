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
  # Cloud Workload Security usage for a given organization for a given hour.
  class UsageCWSHour
    include DatadogAPIClient::BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The total number of Cloud Workload Security container hours from the start of the given hour’s month until the given hour.
    attr_accessor :cws_container_count

    # The total number of Cloud Workload Security host hours from the start of the given hour’s month until the given hour.
    attr_accessor :cws_host_count

    # The hour for the usage.
    attr_accessor :hour

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cws_container_count' => :'cws_container_count',
        :'cws_host_count' => :'cws_host_count',
        :'hour' => :'hour',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id'
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
        :'cws_container_count' => :'Integer',
        :'cws_host_count' => :'Integer',
        :'hour' => :'Time',
        :'org_name' => :'String',
        :'public_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageCWSHour` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageCWSHour`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cws_container_count')
        self.cws_container_count = attributes[:'cws_container_count']
      end

      if attributes.key?(:'cws_host_count')
        self.cws_host_count = attributes[:'cws_host_count']
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
          cws_container_count == o.cws_container_count &&
          cws_host_count == o.cws_host_count &&
          hour == o.hour &&
          org_name == o.org_name &&
          public_id == o.public_id
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
      [cws_container_count, cws_host_count, hour, org_name, public_id].hash
    end
  end
end
