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
  # Object with the results of a single Synthetic API test.
  class SyntheticsAPITestResultShort
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Last time the API test was performed.
    attr_accessor :check_time

    # Location from which the API test was performed.
    attr_accessor :probe_dc

    # Result of the last API test run.
    attr_accessor :result

    # ID of the API test result.
    attr_accessor :result_id

    # The status of your Synthetic monitor.
    # * `O` for not triggered
    # * `1` for triggered
    # * `2` for no data
    attr_accessor :status

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'check_time' => :'check_time',
        :'probe_dc' => :'probe_dc',
        :'result' => :'result',
        :'result_id' => :'result_id',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'check_time' => :'Float',
        :'probe_dc' => :'String',
        :'result' => :'SyntheticsAPITestResultShortResult',
        :'result_id' => :'String',
        :'status' => :'SyntheticsTestMonitorStatus'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsAPITestResultShort` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsAPITestResultShort`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'check_time')
        self.check_time = attributes[:'check_time']
      end

      if attributes.key?(:'probe_dc')
        self.probe_dc = attributes[:'probe_dc']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'result_id')
        self.result_id = attributes[:'result_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
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
          check_time == o.check_time &&
          probe_dc == o.probe_dc &&
          result == o.result &&
          result_id == o.result_id &&
          status == o.status
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:check_time, :probe_dc, :result, :result_id, :status].hash
    end
  end
end
