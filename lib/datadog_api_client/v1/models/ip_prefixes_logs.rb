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
  # Available prefix information for the Logs endpoints.
  class IPPrefixesLogs
    include BaseGenericModel

    # List of IPv4 prefixes.
    attr_accessor :prefixes_ipv4

    # List of IPv6 prefixes.
    attr_accessor :prefixes_ipv6

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'prefixes_ipv4' => :'prefixes_ipv4',
        :'prefixes_ipv6' => :'prefixes_ipv6'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'prefixes_ipv4' => :'Array<String>',
        :'prefixes_ipv6' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::IPPrefixesLogs` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::IPPrefixesLogs`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'prefixes_ipv4')
        if (value = attributes[:'prefixes_ipv4']).is_a?(Array)
          self.prefixes_ipv4 = value
        end
      end

      if attributes.key?(:'prefixes_ipv6')
        if (value = attributes[:'prefixes_ipv6']).is_a?(Array)
          self.prefixes_ipv6 = value
        end
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          prefixes_ipv4 == o.prefixes_ipv4 &&
          prefixes_ipv6 == o.prefixes_ipv6
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [prefixes_ipv4, prefixes_ipv6].hash
    end
  end
end
