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
  # Pagination metadata returned by the API.
  class SearchSLOResponseMetaPage
    include BaseGenericModel

    # The first number.
    attr_accessor :first_number

    # The last number.
    attr_accessor :last_number

    # The next number.
    attr_accessor :next_number

    # The page number.
    attr_accessor :number

    # The previous page number.
    attr_accessor :prev_number

    # The size of the response.
    attr_accessor :size

    # The total number of SLOs in the response.
    attr_accessor :total

    # Type of pagination.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'first_number' => :'first_number',
        :'last_number' => :'last_number',
        :'next_number' => :'next_number',
        :'number' => :'number',
        :'prev_number' => :'prev_number',
        :'size' => :'size',
        :'total' => :'total',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'first_number' => :'Integer',
        :'last_number' => :'Integer',
        :'next_number' => :'Integer',
        :'number' => :'Integer',
        :'prev_number' => :'Integer',
        :'size' => :'Integer',
        :'total' => :'Integer',
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SearchSLOResponseMetaPage` initialize method"
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

      if attributes.key?(:'first_number')
        self.first_number = attributes[:'first_number']
      end

      if attributes.key?(:'last_number')
        self.last_number = attributes[:'last_number']
      end

      if attributes.key?(:'next_number')
        self.next_number = attributes[:'next_number']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'prev_number')
        self.prev_number = attributes[:'prev_number']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
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
          first_number == o.first_number &&
          last_number == o.last_number &&
          next_number == o.next_number &&
          number == o.number &&
          prev_number == o.prev_number &&
          size == o.size &&
          total == o.total &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [first_number, last_number, next_number, number, prev_number, size, total, type, additional_properties].hash
    end
  end
end
