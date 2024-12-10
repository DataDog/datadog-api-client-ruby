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
  # Number of indexed logs for each hour and index for a given organization.
  class UsageLogsByIndexHour
    include BaseGenericModel

    # The total number of indexed logs for the queried hour.
    attr_accessor :event_count

    # The hour for the usage.
    attr_accessor :hour

    # The index ID for this usage.
    attr_accessor :index_id

    # The user specified name for this index ID.
    attr_accessor :index_name

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # The retention period (in days) for this index ID.
    attr_accessor :retention

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'event_count' => :'event_count',
        :'hour' => :'hour',
        :'index_id' => :'index_id',
        :'index_name' => :'index_name',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id',
        :'retention' => :'retention'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'event_count' => :'Integer',
        :'hour' => :'Time',
        :'index_id' => :'String',
        :'index_name' => :'String',
        :'org_name' => :'String',
        :'public_id' => :'String',
        :'retention' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageLogsByIndexHour` initialize method"
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

      if attributes.key?(:'event_count')
        self.event_count = attributes[:'event_count']
      end

      if attributes.key?(:'hour')
        self.hour = attributes[:'hour']
      end

      if attributes.key?(:'index_id')
        self.index_id = attributes[:'index_id']
      end

      if attributes.key?(:'index_name')
        self.index_name = attributes[:'index_name']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'retention')
        self.retention = attributes[:'retention']
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
          event_count == o.event_count &&
          hour == o.hour &&
          index_id == o.index_id &&
          index_name == o.index_name &&
          org_name == o.org_name &&
          public_id == o.public_id &&
          retention == o.retention &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [event_count, hour, index_id, index_name, org_name, public_id, retention, additional_properties].hash
    end
  end
end
