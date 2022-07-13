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
  # Object returned describing a browser test result.
  class SyntheticsBrowserTestResultFull
    include DatadogAPIClient::BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Object describing the browser test configuration.
    attr_accessor :check

    # When the browser test was conducted.
    attr_accessor :check_time

    # Version of the browser test used.
    attr_accessor :check_version

    # Location from which the browser test was performed.
    attr_accessor :probe_dc

    # Object containing results for your Synthetic browser test.
    attr_accessor :result

    # ID of the browser test result.
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
        :'check' => :'check',
        :'check_time' => :'check_time',
        :'check_version' => :'check_version',
        :'probe_dc' => :'probe_dc',
        :'result' => :'result',
        :'result_id' => :'result_id',
        :'status' => :'status'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'check' => :'SyntheticsBrowserTestResultFullCheck',
        :'check_time' => :'Float',
        :'check_version' => :'Integer',
        :'probe_dc' => :'String',
        :'result' => :'SyntheticsBrowserTestResultData',
        :'result_id' => :'String',
        :'status' => :'SyntheticsTestMonitorStatus'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsBrowserTestResultFull` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsBrowserTestResultFull`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'check')
        self.check = attributes[:'check']
      end

      if attributes.key?(:'check_time')
        self.check_time = attributes[:'check_time']
      end

      if attributes.key?(:'check_version')
        self.check_version = attributes[:'check_version']
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
          check == o.check &&
          check_time == o.check_time &&
          check_version == o.check_version &&
          probe_dc == o.probe_dc &&
          result == o.result &&
          result_id == o.result_id &&
          status == o.status
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [check, check_time, check_version, probe_dc, result, result_id, status].hash
    end
  end
end
