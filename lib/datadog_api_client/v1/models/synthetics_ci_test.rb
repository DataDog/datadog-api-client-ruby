=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Test configuration for Synthetics CI
  class SyntheticsCITest
    # whether the object has unparsed attributes
    attr_accessor :_unparsed

    # Disable certificate checks in API tests.
    attr_accessor :allow_insecure_certificates

    attr_accessor :basic_auth

    # Body to include in the test.
    attr_accessor :body

    # Type of the data sent in a synthetics API test.
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

    attr_accessor :metadata

    # The public ID of the Synthetics test to trigger.
    attr_accessor :public_id

    attr_accessor :_retry

    # Starting URL for the browser test.
    attr_accessor :start_url

    # Variables to replace in the test.
    attr_accessor :variables

    # Attribute mapping from ruby-style variable name to JSON key.
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

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'allow_insecure_certificates' => :'Boolean',
        :'basic_auth' => :'SyntheticsBasicAuth',
        :'body' => :'String',
        :'body_type' => :'String',
        :'cookies' => :'String',
        :'device_ids' => :'Array<SyntheticsDeviceID>',
        :'follow_redirects' => :'Boolean',
        :'headers' => :'Hash<String, String>',
        :'locations' => :'Array<String>',
        :'metadata' => :'SyntheticsCITestMetadata',
        :'public_id' => :'String',
        :'_retry' => :'SyntheticsTestOptionsRetry',
        :'start_url' => :'String',
        :'variables' => :'Hash<String, String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsCITest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsCITest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
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
        if (value = attributes[:'headers']).is_a?(Hash)
          self.headers = value
        end
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
        if (value = attributes[:'variables']).is_a?(Hash)
          self.variables = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @public_id.nil?
        invalid_properties.push('invalid value for "public_id", public_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @public_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
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
          variables == o.variables
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [allow_insecure_certificates, basic_auth, body, body_type, cookies, device_ids, follow_redirects, headers, locations, metadata, public_id, _retry, start_url, variables].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when :Array
        # generic array, return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::V1::UnparsedObject
          self._unparsed = true
        end
        res
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
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
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
