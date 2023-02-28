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
  # Object containing information about the tests triggered.
  class SyntheticsTriggerCITestsResponse
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The public ID of the batch triggered.
    attr_accessor :batch_id

    # List of Synthetics locations.
    attr_accessor :locations

    # Information about the tests runs.
    attr_accessor :results

    # The public IDs of the Synthetics test triggered.
    attr_accessor :triggered_check_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'batch_id' => :'batch_id',
        :'locations' => :'locations',
        :'results' => :'results',
        :'triggered_check_ids' => :'triggered_check_ids'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'batch_id' => :'String',
        :'locations' => :'Array<SyntheticsTriggerCITestLocation>',
        :'results' => :'Array<SyntheticsTriggerCITestRunResult>',
        :'triggered_check_ids' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'batch_id',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsTriggerCITestsResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsTriggerCITestsResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'batch_id')
        self.batch_id = attributes[:'batch_id']
      end

      if attributes.key?(:'locations')
        if (value = attributes[:'locations']).is_a?(Array)
          self.locations = value
        end
      end

      if attributes.key?(:'results')
        if (value = attributes[:'results']).is_a?(Array)
          self.results = value
        end
      end

      if attributes.key?(:'triggered_check_ids')
        if (value = attributes[:'triggered_check_ids']).is_a?(Array)
          self.triggered_check_ids = value
        end
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
          batch_id == o.batch_id &&
          locations == o.locations &&
          results == o.results &&
          triggered_check_ids == o.triggered_check_ids
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:batch_id, :locations, :results, :triggered_check_ids].hash
    end
  end
end
