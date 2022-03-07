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
  # Object with the results of a Synthetics batch.
  class SyntheticsBatchResult
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The device ID.
    attr_accessor :device

    # Total duration in millisecond of the test.
    attr_accessor :duration

    # Execution rule for a Synthetics test.
    attr_accessor :execution_rule

    # Name of the location.
    attr_accessor :location

    # The ID of the result to get.
    attr_accessor :result_id

    # Total duration in millisecond of the test.
    attr_accessor :retries

    # Determines whether or not the batch has passed, failed, or is in progress.
    attr_accessor :status

    # Name of the test.
    attr_accessor :test_name

    # The public ID of the Synthetic test.
    attr_accessor :test_public_id

    # Type of the Synthetic test, either `api` or `browser`.
    attr_accessor :test_type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'device' => :'device',
        :'duration' => :'duration',
        :'execution_rule' => :'execution_rule',
        :'location' => :'location',
        :'result_id' => :'result_id',
        :'retries' => :'retries',
        :'status' => :'status',
        :'test_name' => :'test_name',
        :'test_public_id' => :'test_public_id',
        :'test_type' => :'test_type'
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
        :'device' => :'SyntheticsDeviceID',
        :'duration' => :'Float',
        :'execution_rule' => :'SyntheticsTestExecutionRule',
        :'location' => :'String',
        :'result_id' => :'String',
        :'retries' => :'Float',
        :'status' => :'SyntheticsStatus',
        :'test_name' => :'String',
        :'test_public_id' => :'String',
        :'test_type' => :'SyntheticsTestDetailsType'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsBatchResult` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsBatchResult`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'device')
        self.device = attributes[:'device']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'execution_rule')
        self.execution_rule = attributes[:'execution_rule']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'result_id')
        self.result_id = attributes[:'result_id']
      end

      if attributes.key?(:'retries')
        self.retries = attributes[:'retries']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'test_name')
        self.test_name = attributes[:'test_name']
      end

      if attributes.key?(:'test_public_id')
        self.test_public_id = attributes[:'test_public_id']
      end

      if attributes.key?(:'test_type')
        self.test_type = attributes[:'test_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
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
          device == o.device &&
          duration == o.duration &&
          execution_rule == o.execution_rule &&
          location == o.location &&
          result_id == o.result_id &&
          retries == o.retries &&
          status == o.status &&
          test_name == o.test_name &&
          test_public_id == o.test_public_id &&
          test_type == o.test_type
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
      [device, duration, execution_rule, location, result_id, retries, status, test_name, test_public_id, test_type].hash
    end
  end
end
