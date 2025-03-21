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
  # Attributes of hourly usage for a product family for an org for a time period.
  class HourlyUsageAttributes
    include BaseGenericModel

    # The account name.
    attr_accessor :account_name

    # The account public ID.
    attr_accessor :account_public_id

    # List of the measured usage values for the product family for the org for the time period.
    attr_accessor :measurements

    # The organization name.
    attr_accessor :org_name

    # The product for which usage is being reported.
    attr_accessor :product_family

    # The organization public ID.
    attr_accessor :public_id

    # The region of the Datadog instance that the organization belongs to.
    attr_accessor :region

    # Datetime in ISO-8601 format, UTC. The hour for the usage.
    attr_accessor :timestamp

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'account_name' => :'account_name',
        :'account_public_id' => :'account_public_id',
        :'measurements' => :'measurements',
        :'org_name' => :'org_name',
        :'product_family' => :'product_family',
        :'public_id' => :'public_id',
        :'region' => :'region',
        :'timestamp' => :'timestamp'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'account_name' => :'String',
        :'account_public_id' => :'String',
        :'measurements' => :'Array<HourlyUsageMeasurement>',
        :'org_name' => :'String',
        :'product_family' => :'String',
        :'public_id' => :'String',
        :'region' => :'String',
        :'timestamp' => :'Time'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::HourlyUsageAttributes` initialize method"
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

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'account_public_id')
        self.account_public_id = attributes[:'account_public_id']
      end

      if attributes.key?(:'measurements')
        if (value = attributes[:'measurements']).is_a?(Array)
          self.measurements = value
        end
      end

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

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
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
          account_name == o.account_name &&
          account_public_id == o.account_public_id &&
          measurements == o.measurements &&
          org_name == o.org_name &&
          product_family == o.product_family &&
          public_id == o.public_id &&
          region == o.region &&
          timestamp == o.timestamp &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [account_name, account_public_id, measurements, org_name, product_family, public_id, region, timestamp, additional_properties].hash
    end
  end
end
