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
  # The metadata for the current pagination.
  class UsageTopAvgMetricsPagination
    include BaseGenericModel

    # Maximum amount of records to be returned.
    attr_accessor :limit

    # The cursor to get the next results (if any). To make the next request, use the same parameters and add `next_record_id`.
    attr_accessor :next_record_id

    # Total number of records.
    attr_accessor :total_number_of_records

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'limit' => :'limit',
        :'next_record_id' => :'next_record_id',
        :'total_number_of_records' => :'total_number_of_records'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'limit' => :'Integer',
        :'next_record_id' => :'String',
        :'total_number_of_records' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'next_record_id',
        :'total_number_of_records',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageTopAvgMetricsPagination` initialize method"
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

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'next_record_id')
        self.next_record_id = attributes[:'next_record_id']
      end

      if attributes.key?(:'total_number_of_records')
        self.total_number_of_records = attributes[:'total_number_of_records']
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
          limit == o.limit &&
          next_record_id == o.next_record_id &&
          total_number_of_records == o.total_number_of_records &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [limit, next_record_id, total_number_of_records, additional_properties].hash
    end
  end
end
