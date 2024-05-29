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
  # Payload to test a rule query with the expected result.
  class SecurityMonitoringRuleQueryPayload
    include BaseGenericModel

    # Expected result of the test.
    attr_accessor :expected_result

    # Index of the query under test.
    attr_reader :index

    # Payload used to test the rule query.
    attr_accessor :payload

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'expected_result' => :'expectedResult',
        :'index' => :'index',
        :'payload' => :'payload'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'expected_result' => :'Boolean',
        :'index' => :'Integer',
        :'payload' => :'SecurityMonitoringRuleQueryPayloadData'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringRuleQueryPayload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SecurityMonitoringRuleQueryPayload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'expected_result')
        self.expected_result = attributes[:'expected_result']
      end

      if attributes.key?(:'index')
        self.index = attributes[:'index']
      end

      if attributes.key?(:'payload')
        self.payload = attributes[:'payload']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@index.nil? && @index < 0
      true
    end

    # Custom attribute writer method with validation
    # @param index [Object] Object to be assigned
    # @!visibility private
    def index=(index)
      if !index.nil? && index < 0
        fail ArgumentError, 'invalid value for "index", must be greater than or equal to 0.'
      end
      @index = index
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          expected_result == o.expected_result &&
          index == o.index &&
          payload == o.payload
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [expected_result, index, payload].hash
    end
  end
end