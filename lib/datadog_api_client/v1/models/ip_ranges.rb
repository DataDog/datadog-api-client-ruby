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
  # IP ranges.
  class IPRanges
    include BaseGenericModel

    # Available prefix information for the Agent endpoints.
    attr_accessor :agents

    # Available prefix information for the API endpoints.
    attr_accessor :api

    # Available prefix information for the APM endpoints.
    attr_accessor :apm

    # Available prefix information for all Datadog endpoints.
    attr_accessor :global

    # Available prefix information for the Logs endpoints.
    attr_accessor :logs

    # Date when last updated, in the form `YYYY-MM-DD-hh-mm-ss`.
    attr_accessor :modified

    # Available prefix information for the Orchestrator endpoints.
    attr_accessor :orchestrator

    # Available prefix information for the Process endpoints.
    attr_accessor :process

    # Available prefix information for the Remote Configuration endpoints.
    attr_accessor :remote_configuration

    # Available prefix information for the Synthetics endpoints.
    attr_accessor :synthetics

    # Available prefix information for the Synthetics Private Locations endpoints.
    attr_accessor :synthetics_private_locations

    # Version of the IP list.
    attr_accessor :version

    # Available prefix information for the Webhook endpoints.
    attr_accessor :webhooks

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'agents' => :'agents',
        :'api' => :'api',
        :'apm' => :'apm',
        :'global' => :'global',
        :'logs' => :'logs',
        :'modified' => :'modified',
        :'orchestrator' => :'orchestrator',
        :'process' => :'process',
        :'remote_configuration' => :'remote-configuration',
        :'synthetics' => :'synthetics',
        :'synthetics_private_locations' => :'synthetics-private-locations',
        :'version' => :'version',
        :'webhooks' => :'webhooks'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'agents' => :'IPPrefixesAgents',
        :'api' => :'IPPrefixesAPI',
        :'apm' => :'IPPrefixesAPM',
        :'global' => :'IPPrefixesGlobal',
        :'logs' => :'IPPrefixesLogs',
        :'modified' => :'String',
        :'orchestrator' => :'IPPrefixesOrchestrator',
        :'process' => :'IPPrefixesProcess',
        :'remote_configuration' => :'IPPrefixesRemoteConfiguration',
        :'synthetics' => :'IPPrefixesSynthetics',
        :'synthetics_private_locations' => :'IPPrefixesSyntheticsPrivateLocations',
        :'version' => :'Integer',
        :'webhooks' => :'IPPrefixesWebhooks'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::IPRanges` initialize method"
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

      if attributes.key?(:'agents')
        self.agents = attributes[:'agents']
      end

      if attributes.key?(:'api')
        self.api = attributes[:'api']
      end

      if attributes.key?(:'apm')
        self.apm = attributes[:'apm']
      end

      if attributes.key?(:'global')
        self.global = attributes[:'global']
      end

      if attributes.key?(:'logs')
        self.logs = attributes[:'logs']
      end

      if attributes.key?(:'modified')
        self.modified = attributes[:'modified']
      end

      if attributes.key?(:'orchestrator')
        self.orchestrator = attributes[:'orchestrator']
      end

      if attributes.key?(:'process')
        self.process = attributes[:'process']
      end

      if attributes.key?(:'remote_configuration')
        self.remote_configuration = attributes[:'remote_configuration']
      end

      if attributes.key?(:'synthetics')
        self.synthetics = attributes[:'synthetics']
      end

      if attributes.key?(:'synthetics_private_locations')
        self.synthetics_private_locations = attributes[:'synthetics_private_locations']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'webhooks')
        self.webhooks = attributes[:'webhooks']
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
          agents == o.agents &&
          api == o.api &&
          apm == o.apm &&
          global == o.global &&
          logs == o.logs &&
          modified == o.modified &&
          orchestrator == o.orchestrator &&
          process == o.process &&
          remote_configuration == o.remote_configuration &&
          synthetics == o.synthetics &&
          synthetics_private_locations == o.synthetics_private_locations &&
          version == o.version &&
          webhooks == o.webhooks
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [agents, api, apm, global, logs, modified, orchestrator, process, remote_configuration, synthetics, synthetics_private_locations, version, webhooks].hash
    end
  end
end
