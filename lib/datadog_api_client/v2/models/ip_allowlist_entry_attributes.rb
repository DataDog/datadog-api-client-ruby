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
  # Attributes of the IP allowlist entry.
  class IPAllowlistEntryAttributes
    include BaseGenericModel

    # The CIDR block describing the IP range of the entry.
    attr_accessor :cidr_block

    # Creation time of the entry.
    attr_accessor :created_at

    # Time of last entry modification.
    attr_accessor :modified_at

    # A note describing the IP allowlist entry.
    attr_accessor :note

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cidr_block' => :'cidr_block',
        :'created_at' => :'created_at',
        :'modified_at' => :'modified_at',
        :'note' => :'note'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'cidr_block' => :'String',
        :'created_at' => :'Time',
        :'modified_at' => :'Time',
        :'note' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::IPAllowlistEntryAttributes` initialize method"
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

      if attributes.key?(:'cidr_block')
        self.cidr_block = attributes[:'cidr_block']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'note')
        self.note = attributes[:'note']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cidr_block == o.cidr_block &&
          created_at == o.created_at &&
          modified_at == o.modified_at &&
          note == o.note
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [cidr_block, created_at, modified_at, note].hash
    end
  end
end
