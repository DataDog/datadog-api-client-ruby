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
  # Object describing the Synthetic test request.
  class SyntheticsTestRequest
    include BaseGenericModel

    # Allows loading insecure content for an HTTP request in a multistep test step.
    attr_accessor :allow_insecure

    # Object to handle basic authentication when performing the test.
    attr_accessor :basic_auth

    # Body to include in the test.
    attr_accessor :body

    # Type of the request body.
    attr_accessor :body_type

    # The type of gRPC call to perform.
    attr_accessor :call_type

    # Client certificate to use when performing the test request.
    attr_accessor :certificate

    # By default, the client certificate is applied on the domain of the starting URL for browser tests. If you want your client certificate to be applied on other domains instead, add them in `certificateDomains`.
    attr_accessor :certificate_domains

    # A protobuf JSON descriptor that needs to be gzipped first then base64 encoded.
    attr_accessor :compressed_json_descriptor

    # A protobuf file that needs to be gzipped first then base64 encoded.
    attr_accessor :compressed_proto_file

    # DNS server to use for DNS tests.
    attr_accessor :dns_server

    # DNS server port to use for DNS tests.
    attr_reader :dns_server_port

    # Specifies whether or not the request follows redirects.
    attr_accessor :follow_redirects

    # Headers to include when performing the test.
    attr_accessor :headers

    # Host name to perform the test with.
    attr_accessor :host

    # Message to send for UDP or WebSocket tests.
    attr_accessor :message

    # Metadata to include when performing the gRPC test.
    attr_accessor :metadata

    # Either the HTTP method/verb to use or a gRPC method available on the service set in the `service` field. Required if `subtype` is `HTTP` or if `subtype` is `grpc` and `callType` is `unary`.
    attr_accessor :method

    # Determines whether or not to save the response body.
    attr_accessor :no_saving_response_body

    # Number of pings to use per test.
    attr_reader :number_of_packets

    # Persist cookies across redirects.
    attr_accessor :persist_cookies

    # Port to use when performing the test.
    attr_accessor :port

    # The proxy to perform the test.
    attr_accessor :proxy

    # Query to use for the test.
    attr_accessor :query

    # For SSL tests, it specifies on which server you want to initiate the TLS handshake,
    # allowing the server to present one of multiple possible certificates on
    # the same IP address and TCP port number.
    attr_accessor :servername

    # The gRPC service on which you want to perform the gRPC call.
    attr_accessor :service

    # Turns on a traceroute probe to discover all gateways along the path to the host destination.
    attr_accessor :should_track_hops

    # Timeout in seconds for the test.
    attr_accessor :timeout

    # URL to perform the test with.
    attr_accessor :url

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'allow_insecure' => :'allow_insecure',
        :'basic_auth' => :'basicAuth',
        :'body' => :'body',
        :'body_type' => :'bodyType',
        :'call_type' => :'callType',
        :'certificate' => :'certificate',
        :'certificate_domains' => :'certificateDomains',
        :'compressed_json_descriptor' => :'compressedJsonDescriptor',
        :'compressed_proto_file' => :'compressedProtoFile',
        :'dns_server' => :'dnsServer',
        :'dns_server_port' => :'dnsServerPort',
        :'follow_redirects' => :'follow_redirects',
        :'headers' => :'headers',
        :'host' => :'host',
        :'message' => :'message',
        :'metadata' => :'metadata',
        :'method' => :'method',
        :'no_saving_response_body' => :'noSavingResponseBody',
        :'number_of_packets' => :'numberOfPackets',
        :'persist_cookies' => :'persistCookies',
        :'port' => :'port',
        :'proxy' => :'proxy',
        :'query' => :'query',
        :'servername' => :'servername',
        :'service' => :'service',
        :'should_track_hops' => :'shouldTrackHops',
        :'timeout' => :'timeout',
        :'url' => :'url'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'allow_insecure' => :'Boolean',
        :'basic_auth' => :'SyntheticsBasicAuth',
        :'body' => :'String',
        :'body_type' => :'SyntheticsTestRequestBodyType',
        :'call_type' => :'SyntheticsTestCallType',
        :'certificate' => :'SyntheticsTestRequestCertificate',
        :'certificate_domains' => :'Array<String>',
        :'compressed_json_descriptor' => :'String',
        :'compressed_proto_file' => :'String',
        :'dns_server' => :'String',
        :'dns_server_port' => :'Integer',
        :'follow_redirects' => :'Boolean',
        :'headers' => :'Hash<String, String>',
        :'host' => :'String',
        :'message' => :'String',
        :'metadata' => :'Hash<String, String>',
        :'method' => :'String',
        :'no_saving_response_body' => :'Boolean',
        :'number_of_packets' => :'Integer',
        :'persist_cookies' => :'Boolean',
        :'port' => :'Integer',
        :'proxy' => :'SyntheticsTestRequestProxy',
        :'query' => :'Object',
        :'servername' => :'String',
        :'service' => :'String',
        :'should_track_hops' => :'Boolean',
        :'timeout' => :'Float',
        :'url' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
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

      if attributes.key?(:'body_type')
        self.body_type = attributes[:'body_type']
      end

      if attributes.key?(:'call_type')
        self.call_type = attributes[:'call_type']
      end

      if attributes.key?(:'certificate')
        self.certificate = attributes[:'certificate']
      end

      if attributes.key?(:'certificate_domains')
        if (value = attributes[:'certificate_domains']).is_a?(Array)
          self.certificate_domains = value
        end
      end

      if attributes.key?(:'compressed_json_descriptor')
        self.compressed_json_descriptor = attributes[:'compressed_json_descriptor']
      end

      if attributes.key?(:'compressed_proto_file')
        self.compressed_proto_file = attributes[:'compressed_proto_file']
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
        self.headers = attributes[:'headers']
      end

      if attributes.key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
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

      if attributes.key?(:'persist_cookies')
        self.persist_cookies = attributes[:'persist_cookies']
      end

      if attributes.key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.key?(:'proxy')
        self.proxy = attributes[:'proxy']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'servername')
        self.servername = attributes[:'servername']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
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

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@dns_server_port.nil? && @dns_server_port > 65535
      return false if !@dns_server_port.nil? && @dns_server_port < 1
      return false if !@number_of_packets.nil? && @number_of_packets > 10
      return false if !@number_of_packets.nil? && @number_of_packets < 0
      true
    end

    # Custom attribute writer method with validation
    # @param dns_server_port [Object] Object to be assigned
    # @!visibility private
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
    # @param number_of_packets [Object] Object to be assigned
    # @!visibility private
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
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allow_insecure == o.allow_insecure &&
          basic_auth == o.basic_auth &&
          body == o.body &&
          body_type == o.body_type &&
          call_type == o.call_type &&
          certificate == o.certificate &&
          certificate_domains == o.certificate_domains &&
          compressed_json_descriptor == o.compressed_json_descriptor &&
          compressed_proto_file == o.compressed_proto_file &&
          dns_server == o.dns_server &&
          dns_server_port == o.dns_server_port &&
          follow_redirects == o.follow_redirects &&
          headers == o.headers &&
          host == o.host &&
          message == o.message &&
          metadata == o.metadata &&
          method == o.method &&
          no_saving_response_body == o.no_saving_response_body &&
          number_of_packets == o.number_of_packets &&
          persist_cookies == o.persist_cookies &&
          port == o.port &&
          proxy == o.proxy &&
          query == o.query &&
          servername == o.servername &&
          service == o.service &&
          should_track_hops == o.should_track_hops &&
          timeout == o.timeout &&
          url == o.url
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [allow_insecure, basic_auth, body, body_type, call_type, certificate, certificate_domains, compressed_json_descriptor, compressed_proto_file, dns_server, dns_server_port, follow_redirects, headers, host, message, metadata, method, no_saving_response_body, number_of_packets, persist_cookies, port, proxy, query, servername, service, should_track_hops, timeout, url].hash
    end
  end
end
