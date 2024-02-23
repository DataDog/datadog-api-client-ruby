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
  # The freshness of the monitor, indicating if the monitor evaluation is up to date. **This feature is currently in private beta.**
  class MonitorFreshness
    include BaseGenericModel

    # The error message if the monitor freshness was not able to be determined.
    attr_accessor :error

    # Whether the monitor evaluation is up to date.
    attr_accessor :is_fresh

    # The timestamp of the last evaluation.
    attr_accessor :last_evaluated

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'error' => :'error',
        :'is_fresh' => :'is_fresh',
        :'last_evaluated' => :'last_evaluated'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'error' => :'String',
        :'is_fresh' => :'Boolean',
        :'last_evaluated' => :'Time'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'error',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::MonitorFreshness` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::MonitorFreshness`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.key?(:'is_fresh')
        self.is_fresh = attributes[:'is_fresh']
      end

      if attributes.key?(:'last_evaluated')
        self.last_evaluated = attributes[:'last_evaluated']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          error == o.error &&
          is_fresh == o.is_fresh &&
          last_evaluated == o.last_evaluated
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [error, is_fresh, last_evaluated].hash
    end
  end
end
