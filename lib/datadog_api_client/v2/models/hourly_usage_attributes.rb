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

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

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

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
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
        :'measurements' => :'Array<HourlyUsageMeasurement>',
        :'org_name' => :'String',
        :'product_family' => :'String',
        :'public_id' => :'String',
        :'region' => :'String',
        :'timestamp' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::HourlyUsageAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::HourlyUsageAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

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
          measurements == o.measurements &&
          org_name == o.org_name &&
          product_family == o.product_family &&
          public_id == o.public_id &&
          region == o.region &&
          timestamp == o.timestamp
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [measurements, org_name, product_family, public_id, region, timestamp].hash
    end
  end
end
