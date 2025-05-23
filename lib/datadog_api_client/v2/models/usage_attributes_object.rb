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
  # Usage attributes data.
  class UsageAttributesObject
    include BaseGenericModel

    # The organization name.
    attr_accessor :org_name

    # The product for which usage is being reported.
    attr_accessor :product_family

    # The organization public ID.
    attr_accessor :public_id

    # The region of the Datadog instance that the organization belongs to.
    attr_accessor :region

    # List of usage data reported for each requested hour.
    attr_accessor :timeseries

    # Usage type that is being measured.
    attr_accessor :usage_type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'org_name' => :'org_name',
        :'product_family' => :'product_family',
        :'public_id' => :'public_id',
        :'region' => :'region',
        :'timeseries' => :'timeseries',
        :'usage_type' => :'usage_type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'org_name' => :'String',
        :'product_family' => :'String',
        :'public_id' => :'String',
        :'region' => :'String',
        :'timeseries' => :'Array<UsageTimeSeriesObject>',
        :'usage_type' => :'HourlyUsageType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::UsageAttributesObject` initialize method"
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

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'product_family')
        self.product_family = attributes[:'product_family']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'timeseries')
        if (value = attributes[:'timeseries']).is_a?(Array)
          self.timeseries = value
        end
      end

      if attributes.key?(:'usage_type')
        self.usage_type = attributes[:'usage_type']
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
          org_name == o.org_name &&
          product_family == o.product_family &&
          public_id == o.public_id &&
          region == o.region &&
          timeseries == o.timeseries &&
          usage_type == o.usage_type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [org_name, product_family, public_id, region, timeseries, usage_type, additional_properties].hash
    end
  end
end
