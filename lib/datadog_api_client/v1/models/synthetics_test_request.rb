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
  # Object describing the Synthetic test request.
  class SyntheticsTestRequest
    # whether the object has unparsed attributes
    attr_accessor :_unparsed

    # Allows loading insecure content for an HTTP request in a multistep test step.
    attr_accessor :allow_insecure

    attr_accessor :basic_auth

    # Body to include in the test.
    attr_accessor :body

    attr_accessor :certificate

    # DNS server to use for DNS tests.
    attr_accessor :dns_server

    # DNS server port to use for DNS tests.
    attr_accessor :dns_server_port

    # Specifies whether or not the request follows redirects.
    attr_accessor :follow_redirects

    # Headers to include when performing the test.
    attr_accessor :headers

    # Host name to perform the test with.
    attr_accessor :host

    # Message to send for UDP tests.
    attr_accessor :message

    attr_accessor :method

    # Determines whether or not to save the response body.
    attr_accessor :no_saving_response_body

    # Number of pings to use per test.
    attr_accessor :number_of_packets

    # Port to use when performing the test.
    attr_accessor :port

    # Query to use for the test.
    attr_accessor :query

    # For SSL tests, it specifies on which server you want to initiate the TLS handshake, allowing the server to present one of multiple possible certificates on the same IP address and TCP port number.
    attr_accessor :servername

    # Turns on a traceroute probe to discover all gateways along the path to the host destination.
    attr_accessor :should_track_hops

    # Timeout in seconds for the test.
    attr_accessor :timeout

    # URL to perform the test with.
    attr_accessor :url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_insecure' => :'allow_insecure',
        :'basic_auth' => :'basicAuth',
        :'body' => :'body',
        :'certificate' => :'certificate',
        :'dns_server' => :'dnsServer',
        :'dns_server_port' => :'dnsServerPort',
        :'follow_redirects' => :'follow_redirects',
        :'headers' => :'headers',
        :'host' => :'host',
        :'message' => :'message',
        :'method' => :'method',
        :'no_saving_response_body' => :'noSavingResponseBody',
        :'number_of_packets' => :'numberOfPackets',
        :'port' => :'port',
        :'query' => :'query',
        :'servername' => :'servername',
        :'should_track_hops' => :'shouldTrackHops',
        :'timeout' => :'timeout',
        :'url' => :'url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'allow_insecure' => :'Boolean',
        :'basic_auth' => :'SyntheticsBasicAuth',
        :'body' => :'String',
        :'certificate' => :'SyntheticsTestRequestCertificate',
        :'dns_server' => :'String',
        :'dns_server_port' => :'Integer',
        :'follow_redirects' => :'Boolean',
        :'headers' => :'Hash<String, String>',
        :'host' => :'String',
        :'message' => :'String',
        :'method' => :'HTTPMethod',
        :'no_saving_response_body' => :'Boolean',
        :'number_of_packets' => :'Integer',
        :'port' => :'Integer',
        :'query' => :'Object',
        :'servername' => :'String',
        :'should_track_hops' => :'Boolean',
        :'timeout' => :'Float',
        :'url' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsTestRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsTestRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'allow_insecure')
        self.allow_insecure = attributes[:'allow_insecure']
      end

      if attributes.key?(:'basic_auth')
        self.basic_auth = attributes[:'basic_auth']
      end

      if attributes.key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.key?(:'certificate')
        self.certificate = attributes[:'certificate']
      end

      if attributes.key?(:'dns_server')
        self.dns_server = attributes[:'dns_server']
      end

      if attributes.key?(:'dns_server_port')
        self.dns_server_port = attributes[:'dns_server_port']
      end

      if attributes.key?(:'follow_redirects')
        self.follow_redirects = attributes[:'follow_redirects']
      end

      if attributes.key?(:'headers')
        if (value = attributes[:'headers']).is_a?(Hash)
          self.headers = value
        end
      end

      if attributes.key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'no_saving_response_body')
        self.no_saving_response_body = attributes[:'no_saving_response_body']
      end

      if attributes.key?(:'number_of_packets')
        self.number_of_packets = attributes[:'number_of_packets']
      end

      if attributes.key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'servername')
        self.servername = attributes[:'servername']
      end

      if attributes.key?(:'should_track_hops')
        self.should_track_hops = attributes[:'should_track_hops']
      end

      if attributes.key?(:'timeout')
        self.timeout = attributes[:'timeout']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@dns_server_port.nil? && @dns_server_port > 65535
        invalid_properties.push('invalid value for "dns_server_port", must be smaller than or equal to 65535.')
      end

      if !@dns_server_port.nil? && @dns_server_port < 1
        invalid_properties.push('invalid value for "dns_server_port", must be greater than or equal to 1.')
      end

      if !@number_of_packets.nil? && @number_of_packets > 10
        invalid_properties.push('invalid value for "number_of_packets", must be smaller than or equal to 10.')
      end

      if !@number_of_packets.nil? && @number_of_packets < 0
        invalid_properties.push('invalid value for "number_of_packets", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@dns_server_port.nil? && @dns_server_port > 65535
      return false if !@dns_server_port.nil? && @dns_server_port < 1
      return false if !@number_of_packets.nil? && @number_of_packets > 10
      return false if !@number_of_packets.nil? && @number_of_packets < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] dns_server_port Value to be assigned
    def dns_server_port=(dns_server_port)
      if !dns_server_port.nil? && dns_server_port > 65535
        fail ArgumentError, 'invalid value for "dns_server_port", must be smaller than or equal to 65535.'
      end

      if !dns_server_port.nil? && dns_server_port < 1
        fail ArgumentError, 'invalid value for "dns_server_port", must be greater than or equal to 1.'
      end

      @dns_server_port = dns_server_port
    end

    # Custom attribute writer method with validation
    # @param [Object] number_of_packets Value to be assigned
    def number_of_packets=(number_of_packets)
      if !number_of_packets.nil? && number_of_packets > 10
        fail ArgumentError, 'invalid value for "number_of_packets", must be smaller than or equal to 10.'
      end

      if !number_of_packets.nil? && number_of_packets < 0
        fail ArgumentError, 'invalid value for "number_of_packets", must be greater than or equal to 0.'
      end

      @number_of_packets = number_of_packets
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allow_insecure == o.allow_insecure &&
          basic_auth == o.basic_auth &&
          body == o.body &&
          certificate == o.certificate &&
          dns_server == o.dns_server &&
          dns_server_port == o.dns_server_port &&
          follow_redirects == o.follow_redirects &&
          headers == o.headers &&
          host == o.host &&
          message == o.message &&
          method == o.method &&
          no_saving_response_body == o.no_saving_response_body &&
          number_of_packets == o.number_of_packets &&
          port == o.port &&
          query == o.query &&
          servername == o.servername &&
          should_track_hops == o.should_track_hops &&
          timeout == o.timeout &&
          url == o.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [allow_insecure, basic_auth, body, certificate, dns_server, dns_server_port, follow_redirects, headers, host, message, method, no_saving_response_body, number_of_packets, port, query, servername, should_track_hops, timeout, url].hash
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
