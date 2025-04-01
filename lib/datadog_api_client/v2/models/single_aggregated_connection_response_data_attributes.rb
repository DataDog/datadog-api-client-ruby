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
  # The definition of `SingleAggregatedConnectionResponseDataAttributes` object.
  class SingleAggregatedConnectionResponseDataAttributes
    include BaseGenericModel

    # The total number of bytes sent by the client over the given period.
    attr_accessor :bytes_sent_by_client

    # The total number of bytes sent by the server over the given period.
    attr_accessor :bytes_sent_by_server

    # The `attributes` `group_bys`.
    attr_accessor :group_bys

    # The total number of packets sent by the client over the given period.
    attr_accessor :packets_sent_by_client

    # The total number of packets sent by the server over the given period.
    attr_accessor :packets_sent_by_server

    # Measured as TCP smoothed roundtrip time in microseconds (the time between a TCP frame being sent and acknowledged).
    attr_accessor :rtt_micro_seconds

    # The number of TCP connections in a closed state. Measured in connections per second from the client.
    attr_accessor :tcp_closed_connections

    # The number of TCP connections in an established state. Measured in connections per second from the client.
    attr_accessor :tcp_established_connections

    # The number of TCP connections that were refused by the server. Typically this indicates an attempt to connect to an IP/port that is not receiving connections, or a firewall/security misconfiguration.
    attr_accessor :tcp_refusals

    # The number of TCP connections that were reset by the server.
    attr_accessor :tcp_resets

    # TCP Retransmits represent detected failures that are retransmitted to ensure delivery. Measured in count of retransmits from the client.
    attr_accessor :tcp_retransmits

    # The number of TCP connections that timed out from the perspective of the operating system. This can indicate general connectivity and latency issues.
    attr_accessor :tcp_timeouts

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'bytes_sent_by_client' => :'bytes_sent_by_client',
        :'bytes_sent_by_server' => :'bytes_sent_by_server',
        :'group_bys' => :'group_bys',
        :'packets_sent_by_client' => :'packets_sent_by_client',
        :'packets_sent_by_server' => :'packets_sent_by_server',
        :'rtt_micro_seconds' => :'rtt_micro_seconds',
        :'tcp_closed_connections' => :'tcp_closed_connections',
        :'tcp_established_connections' => :'tcp_established_connections',
        :'tcp_refusals' => :'tcp_refusals',
        :'tcp_resets' => :'tcp_resets',
        :'tcp_retransmits' => :'tcp_retransmits',
        :'tcp_timeouts' => :'tcp_timeouts'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'bytes_sent_by_client' => :'Integer',
        :'bytes_sent_by_server' => :'Integer',
        :'group_bys' => :'Hash<String, Array<String>>',
        :'packets_sent_by_client' => :'Integer',
        :'packets_sent_by_server' => :'Integer',
        :'rtt_micro_seconds' => :'Integer',
        :'tcp_closed_connections' => :'Integer',
        :'tcp_established_connections' => :'Integer',
        :'tcp_refusals' => :'Integer',
        :'tcp_resets' => :'Integer',
        :'tcp_retransmits' => :'Integer',
        :'tcp_timeouts' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SingleAggregatedConnectionResponseDataAttributes` initialize method"
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

      if attributes.key?(:'bytes_sent_by_client')
        self.bytes_sent_by_client = attributes[:'bytes_sent_by_client']
      end

      if attributes.key?(:'bytes_sent_by_server')
        self.bytes_sent_by_server = attributes[:'bytes_sent_by_server']
      end

      if attributes.key?(:'group_bys')
        self.group_bys = attributes[:'group_bys']
      end

      if attributes.key?(:'packets_sent_by_client')
        self.packets_sent_by_client = attributes[:'packets_sent_by_client']
      end

      if attributes.key?(:'packets_sent_by_server')
        self.packets_sent_by_server = attributes[:'packets_sent_by_server']
      end

      if attributes.key?(:'rtt_micro_seconds')
        self.rtt_micro_seconds = attributes[:'rtt_micro_seconds']
      end

      if attributes.key?(:'tcp_closed_connections')
        self.tcp_closed_connections = attributes[:'tcp_closed_connections']
      end

      if attributes.key?(:'tcp_established_connections')
        self.tcp_established_connections = attributes[:'tcp_established_connections']
      end

      if attributes.key?(:'tcp_refusals')
        self.tcp_refusals = attributes[:'tcp_refusals']
      end

      if attributes.key?(:'tcp_resets')
        self.tcp_resets = attributes[:'tcp_resets']
      end

      if attributes.key?(:'tcp_retransmits')
        self.tcp_retransmits = attributes[:'tcp_retransmits']
      end

      if attributes.key?(:'tcp_timeouts')
        self.tcp_timeouts = attributes[:'tcp_timeouts']
      end
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
          bytes_sent_by_client == o.bytes_sent_by_client &&
          bytes_sent_by_server == o.bytes_sent_by_server &&
          group_bys == o.group_bys &&
          packets_sent_by_client == o.packets_sent_by_client &&
          packets_sent_by_server == o.packets_sent_by_server &&
          rtt_micro_seconds == o.rtt_micro_seconds &&
          tcp_closed_connections == o.tcp_closed_connections &&
          tcp_established_connections == o.tcp_established_connections &&
          tcp_refusals == o.tcp_refusals &&
          tcp_resets == o.tcp_resets &&
          tcp_retransmits == o.tcp_retransmits &&
          tcp_timeouts == o.tcp_timeouts &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [bytes_sent_by_client, bytes_sent_by_server, group_bys, packets_sent_by_client, packets_sent_by_server, rtt_micro_seconds, tcp_closed_connections, tcp_established_connections, tcp_refusals, tcp_resets, tcp_retransmits, tcp_timeouts, additional_properties].hash
    end
  end
end
