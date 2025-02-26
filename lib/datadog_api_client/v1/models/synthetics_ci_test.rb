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
  # Configuration for Continuous Testing.
  class SyntheticsCITest
    include BaseGenericModel

    # Disable certificate checks in API tests.
    attr_accessor :allow_insecure_certificates

    # Object to handle basic authentication when performing the test.
    attr_accessor :basic_auth

    # Body to include in the test.
    attr_accessor :body

    # Type of the data sent in a Synthetic API test.
    attr_accessor :body_type

    # Cookies for the request.
    attr_accessor :cookies

    # For browser test, array with the different device IDs used to run the test.
    attr_accessor :device_ids

    # For API HTTP test, whether or not the test should follow redirects.
    attr_accessor :follow_redirects

    # Headers to include when performing the test.
    attr_accessor :headers

    # Array of locations used to run the test.
    attr_accessor :locations

    # Metadata for the Synthetic tests run.
    attr_accessor :metadata

    # The public ID of the Synthetic test to trigger.
    attr_reader :public_id

    # Object describing the retry strategy to apply to a Synthetic test.
    attr_accessor :_retry

    # Starting URL for the browser test.
    attr_accessor :start_url

    # Variables to replace in the test.
    attr_accessor :variables

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'allow_insecure_certificates' => :'allowInsecureCertificates',
        :'basic_auth' => :'basicAuth',
        :'body' => :'body',
        :'body_type' => :'bodyType',
        :'cookies' => :'cookies',
        :'device_ids' => :'deviceIds',
        :'follow_redirects' => :'followRedirects',
        :'headers' => :'headers',
        :'locations' => :'locations',
        :'metadata' => :'metadata',
        :'public_id' => :'public_id',
        :'_retry' => :'retry',
        :'start_url' => :'startUrl',
        :'variables' => :'variables'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'allow_insecure_certificates' => :'Boolean',
        :'basic_auth' => :'SyntheticsBasicAuth',
        :'body' => :'String',
        :'body_type' => :'String',
        :'cookies' => :'String',
        :'device_ids' => :'Array<String>',
        :'follow_redirects' => :'Boolean',
        :'headers' => :'Hash<String, String>',
        :'locations' => :'Array<String>',
        :'metadata' => :'SyntheticsCIBatchMetadata',
        :'public_id' => :'String',
        :'_retry' => :'SyntheticsTestOptionsRetry',
        :'start_url' => :'String',
        :'variables' => :'Hash<String, String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsCITest` initialize method"
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

      if attributes.key?(:'allow_insecure_certificates')
        self.allow_insecure_certificates = attributes[:'allow_insecure_certificates']
      end

      if attributes.key?(:'basic_auth')
        self.basic_auth = attributes[:'basic_auth']
      end

      if attributes.key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.key?(:'body_type')
        self.body_type = attributes[:'body_type']
      end

      if attributes.key?(:'cookies')
        self.cookies = attributes[:'cookies']
      end

      if attributes.key?(:'device_ids')
        if (value = attributes[:'device_ids']).is_a?(Array)
          self.device_ids = value
        end
      end

      if attributes.key?(:'follow_redirects')
        self.follow_redirects = attributes[:'follow_redirects']
      end

      if attributes.key?(:'headers')
        self.headers = attributes[:'headers']
      end

      if attributes.key?(:'locations')
        if (value = attributes[:'locations']).is_a?(Array)
          self.locations = value
        end
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'_retry')
        self._retry = attributes[:'_retry']
      end

      if attributes.key?(:'start_url')
        self.start_url = attributes[:'start_url']
      end

      if attributes.key?(:'variables')
        self.variables = attributes[:'variables']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @public_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param public_id [Object] Object to be assigned
    # @!visibility private
    def public_id=(public_id)
      if public_id.nil?
        fail ArgumentError, 'invalid value for "public_id", public_id cannot be nil.'
      end
      @public_id = public_id
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allow_insecure_certificates == o.allow_insecure_certificates &&
          basic_auth == o.basic_auth &&
          body == o.body &&
          body_type == o.body_type &&
          cookies == o.cookies &&
          device_ids == o.device_ids &&
          follow_redirects == o.follow_redirects &&
          headers == o.headers &&
          locations == o.locations &&
          metadata == o.metadata &&
          public_id == o.public_id &&
          _retry == o._retry &&
          start_url == o.start_url &&
          variables == o.variables &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [allow_insecure_certificates, basic_auth, body, body_type, cookies, device_ids, follow_redirects, headers, locations, metadata, public_id, _retry, start_url, variables, additional_properties].hash
    end
  end
end
