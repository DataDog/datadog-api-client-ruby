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
  # Object containing results for your Synthetic API test.
  class SyntheticsAPITestResultData
    include BaseGenericModel

    # Object describing the SSL certificate used for a Synthetic test.
    attr_accessor :cert

    # Status of a Synthetic test.
    attr_accessor :event_type

    # The API test failure details.
    attr_accessor :failure

    # The API test HTTP status code.
    attr_accessor :http_status_code

    # Request header object used for the API test.
    attr_accessor :request_headers

    # Response body returned for the API test.
    attr_accessor :response_body

    # Response headers returned for the API test.
    attr_accessor :response_headers

    # Global size in byte of the API test response.
    attr_accessor :response_size

    # Object containing all metrics and their values collected for a Synthetic API test.
    # See the [Synthetic Monitoring Metrics documentation](https://docs.datadoghq.com/synthetics/metrics/).
    attr_accessor :timings

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cert' => :'cert',
        :'event_type' => :'eventType',
        :'failure' => :'failure',
        :'http_status_code' => :'httpStatusCode',
        :'request_headers' => :'requestHeaders',
        :'response_body' => :'responseBody',
        :'response_headers' => :'responseHeaders',
        :'response_size' => :'responseSize',
        :'timings' => :'timings'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'cert' => :'SyntheticsSSLCertificate',
        :'event_type' => :'SyntheticsTestProcessStatus',
        :'failure' => :'SyntheticsApiTestResultFailure',
        :'http_status_code' => :'Integer',
        :'request_headers' => :'Hash<String, Object>',
        :'response_body' => :'String',
        :'response_headers' => :'Hash<String, Object>',
        :'response_size' => :'Integer',
        :'timings' => :'SyntheticsTiming'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsAPITestResultData` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'cert')
        self.cert = attributes[:'cert']
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.key?(:'failure')
        self.failure = attributes[:'failure']
      end

      if attributes.key?(:'http_status_code')
        self.http_status_code = attributes[:'http_status_code']
      end

      if attributes.key?(:'request_headers')
        self.request_headers = attributes[:'request_headers']
      end

      if attributes.key?(:'response_body')
        self.response_body = attributes[:'response_body']
      end

      if attributes.key?(:'response_headers')
        self.response_headers = attributes[:'response_headers']
      end

      if attributes.key?(:'response_size')
        self.response_size = attributes[:'response_size']
      end

      if attributes.key?(:'timings')
        self.timings = attributes[:'timings']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cert == o.cert &&
          event_type == o.event_type &&
          failure == o.failure &&
          http_status_code == o.http_status_code &&
          request_headers == o.request_headers &&
          response_body == o.response_body &&
          response_headers == o.response_headers &&
          response_size == o.response_size &&
          timings == o.timings
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [cert, event_type, failure, http_status_code, request_headers, response_body, response_headers, response_size, timings].hash
    end
  end
end
