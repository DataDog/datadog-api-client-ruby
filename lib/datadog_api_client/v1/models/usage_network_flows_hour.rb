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
  # Number of netflow events indexed for each hour for a given organization.
  class UsageNetworkFlowsHour
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The hour for the usage.
    attr_accessor :hour

    # Contains the number of netflow events indexed.
    attr_accessor :indexed_events_count

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'hour' => :'hour',
        :'indexed_events_count' => :'indexed_events_count',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'hour' => :'Time',
        :'indexed_events_count' => :'Integer',
        :'org_name' => :'String',
        :'public_id' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageNetworkFlowsHour` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageNetworkFlowsHour`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'hour')
        self.hour = attributes[:'hour']
      end

      if attributes.key?(:'indexed_events_count')
        self.indexed_events_count = attributes[:'indexed_events_count']
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
          hour == o.hour &&
          indexed_events_count == o.indexed_events_count &&
          org_name == o.org_name &&
          public_id == o.public_id
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:hour, :indexed_events_count, :org_name, :public_id].hash
    end
  end
end
