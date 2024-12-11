=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  # The search and filter query settings
  class LogsQueryFilter
    include BaseGenericModel

    # The minimum time for the requested logs, supports date math and regular timestamps (milliseconds).
    attr_accessor :from

    # For customers with multiple indexes, the indexes to search. Defaults to ['*'] which means all indexes.
    attr_accessor :indexes

    # The search query - following the log search syntax.
    attr_accessor :query

    # Specifies storage type as indexes, online-archives or flex
    attr_accessor :storage_tier

    # The maximum time for the requested logs, supports date math and regular timestamps (milliseconds).
    attr_accessor :to

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'from' => :'from',
        :'indexes' => :'indexes',
        :'query' => :'query',
        :'storage_tier' => :'storage_tier',
        :'to' => :'to'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'from' => :'String',
        :'indexes' => :'Array<String>',
        :'query' => :'String',
        :'storage_tier' => :'LogsStorageTier',
        :'to' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::LogsQueryFilter` initialize method"
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

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'indexes')
        if (value = attributes[:'indexes']).is_a?(Array)
          self.indexes = value
        end
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'storage_tier')
        self.storage_tier = attributes[:'storage_tier']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
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
          from == o.from &&
          indexes == o.indexes &&
          query == o.query &&
          storage_tier == o.storage_tier &&
          to == o.to &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [from, indexes, query, storage_tier, to, additional_properties].hash
    end
  end
end
