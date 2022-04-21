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

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Available prefix information for the Agent endpoints.
    attr_accessor :agents

    # Available prefix information for the API endpoints.
    attr_accessor :api

    # Available prefix information for the APM endpoints.
    attr_accessor :apm

    # Available prefix information for the Logs endpoints.
    attr_accessor :logs

    # Date when last updated, in the form `YYYY-MM-DD-hh-mm-ss`.
    attr_accessor :modified

    # Available prefix information for the Process endpoints.
    attr_accessor :process

    # Available prefix information for the Synthetics endpoints.
    attr_accessor :synthetics

    # Version of the IP list.
    attr_accessor :version

    # Available prefix information for the Webhook endpoints.
    attr_accessor :webhooks

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'agents' => :'agents',
        :'api' => :'api',
        :'apm' => :'apm',
        :'logs' => :'logs',
        :'modified' => :'modified',
        :'process' => :'process',
        :'synthetics' => :'synthetics',
        :'version' => :'version',
        :'webhooks' => :'webhooks'
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
        :'agents' => :'IPPrefixesAgents',
        :'api' => :'IPPrefixesAPI',
        :'apm' => :'IPPrefixesAPM',
        :'logs' => :'IPPrefixesLogs',
        :'modified' => :'String',
        :'process' => :'IPPrefixesProcess',
        :'synthetics' => :'IPPrefixesSynthetics',
        :'version' => :'Integer',
        :'webhooks' => :'IPPrefixesWebhooks'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::IPRanges` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::IPRanges`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
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

      if attributes.key?(:'logs')
        self.logs = attributes[:'logs']
      end

      if attributes.key?(:'modified')
        self.modified = attributes[:'modified']
      end

      if attributes.key?(:'process')
        self.process = attributes[:'process']
      end

      if attributes.key?(:'synthetics')
        self.synthetics = attributes[:'synthetics']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'webhooks')
        self.webhooks = attributes[:'webhooks']
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
          agents == o.agents &&
          api == o.api &&
          apm == o.apm &&
          logs == o.logs &&
          modified == o.modified &&
          process == o.process &&
          synthetics == o.synthetics &&
          version == o.version &&
          webhooks == o.webhooks
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
      [agents, api, apm, logs, modified, process, synthetics, version, webhooks].hash
    end
  end
end
