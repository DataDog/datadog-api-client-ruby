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
  # The metadata associated with a request.
  class SpansAggregateResponseMetadata
    include BaseGenericModel

    # The time elapsed in milliseconds.
    attr_accessor :elapsed

    # The identifier of the request.
    attr_accessor :request_id

    # The status of the response.
    attr_accessor :status

    # A list of warnings (non fatal errors) encountered, partial results might be returned if
    # warnings are present in the response.
    attr_accessor :warnings

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'elapsed' => :'elapsed',
        :'request_id' => :'request_id',
        :'status' => :'status',
        :'warnings' => :'warnings'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'elapsed' => :'Integer',
        :'request_id' => :'String',
        :'status' => :'SpansAggregateResponseStatus',
        :'warnings' => :'Array<SpansWarning>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SpansAggregateResponseMetadata` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SpansAggregateResponseMetadata`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'elapsed')
        self.elapsed = attributes[:'elapsed']
      end

      if attributes.key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'warnings')
        if (value = attributes[:'warnings']).is_a?(Array)
          self.warnings = value
        end
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          elapsed == o.elapsed &&
          request_id == o.request_id &&
          status == o.status &&
          warnings == o.warnings
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [elapsed, request_id, status, warnings].hash
    end
  end
end