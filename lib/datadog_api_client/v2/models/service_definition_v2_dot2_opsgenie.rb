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
  # Opsgenie integration for the service.
  class ServiceDefinitionV2Dot2Opsgenie
    include BaseGenericModel

    # Opsgenie instance region.
    attr_accessor :region

    # Opsgenie service url.
    attr_reader :service_url

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'region' => :'region',
        :'service_url' => :'service-url'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'region' => :'ServiceDefinitionV2Dot2OpsgenieRegion',
        :'service_url' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ServiceDefinitionV2Dot2Opsgenie` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::ServiceDefinitionV2Dot2Opsgenie`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'service_url')
        self.service_url = attributes[:'service_url']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @service_url.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param service_url [Object] Object to be assigned
    # @!visibility private
    def service_url=(service_url)
      if service_url.nil?
        fail ArgumentError, 'invalid value for "service_url", service_url cannot be nil.'
      end
      @service_url = service_url
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          region == o.region &&
          service_url == o.service_url
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [region, service_url].hash
    end
  end
end
