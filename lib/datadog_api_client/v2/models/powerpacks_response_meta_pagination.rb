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
  # Powerpack response pagination metadata.
  class PowerpacksResponseMetaPagination
    include BaseGenericModel

    # The first offset.
    attr_accessor :first_offset

    # The last offset.
    attr_accessor :last_offset

    # Pagination limit.
    attr_accessor :limit

    # The next offset.
    attr_accessor :next_offset

    # The offset.
    attr_accessor :offset

    # The previous offset.
    attr_accessor :prev_offset

    # Total results.
    attr_accessor :total

    # Offset type.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'first_offset' => :'first_offset',
        :'last_offset' => :'last_offset',
        :'limit' => :'limit',
        :'next_offset' => :'next_offset',
        :'offset' => :'offset',
        :'prev_offset' => :'prev_offset',
        :'total' => :'total',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'first_offset' => :'Integer',
        :'last_offset' => :'Integer',
        :'limit' => :'Integer',
        :'next_offset' => :'Integer',
        :'offset' => :'Integer',
        :'prev_offset' => :'Integer',
        :'total' => :'Integer',
        :'type' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'last_offset',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::PowerpacksResponseMetaPagination` initialize method"
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

      if attributes.key?(:'first_offset')
        self.first_offset = attributes[:'first_offset']
      end

      if attributes.key?(:'last_offset')
        self.last_offset = attributes[:'last_offset']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'next_offset')
        self.next_offset = attributes[:'next_offset']
      end

      if attributes.key?(:'offset')
        self.offset = attributes[:'offset']
      end

      if attributes.key?(:'prev_offset')
        self.prev_offset = attributes[:'prev_offset']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
          first_offset == o.first_offset &&
          last_offset == o.last_offset &&
          limit == o.limit &&
          next_offset == o.next_offset &&
          offset == o.offset &&
          prev_offset == o.prev_offset &&
          total == o.total &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [first_offset, last_offset, limit, next_offset, offset, prev_offset, total, type, additional_properties].hash
    end
  end
end
