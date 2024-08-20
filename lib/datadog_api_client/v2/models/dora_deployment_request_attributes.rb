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
  # Attributes to create a DORA deployment event.
  class DORADeploymentRequestAttributes
    include BaseGenericModel

    # Environment name to where the service was deployed.
    attr_accessor :env

    # Unix timestamp when the deployment finished. It must be in nanoseconds, milliseconds, or seconds, and it should not be older than 1 hour.
    attr_reader :finished_at

    # Git info for DORA Metrics events.
    attr_accessor :git

    # Deployment ID.
    attr_accessor :id

    # Service name from a service available in the Service Catalog.
    attr_reader :service

    # Unix timestamp when the deployment started. It must be in nanoseconds, milliseconds, or seconds.
    attr_reader :started_at

    # Version to correlate with [APM Deployment Tracking](https://docs.datadoghq.com/tracing/services/deployment_tracking/).
    attr_accessor :version

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'env' => :'env',
        :'finished_at' => :'finished_at',
        :'git' => :'git',
        :'id' => :'id',
        :'service' => :'service',
        :'started_at' => :'started_at',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'env' => :'String',
        :'finished_at' => :'Integer',
        :'git' => :'DORAGitInfo',
        :'id' => :'String',
        :'service' => :'String',
        :'started_at' => :'Integer',
        :'version' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::DORADeploymentRequestAttributes` initialize method"
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

      if attributes.key?(:'env')
        self.env = attributes[:'env']
      end

      if attributes.key?(:'finished_at')
        self.finished_at = attributes[:'finished_at']
      end

      if attributes.key?(:'git')
        self.git = attributes[:'git']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      end

      if attributes.key?(:'started_at')
        self.started_at = attributes[:'started_at']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @finished_at.nil?
      return false if @service.nil?
      return false if @started_at.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param finished_at [Object] Object to be assigned
    # @!visibility private
    def finished_at=(finished_at)
      if finished_at.nil?
        fail ArgumentError, 'invalid value for "finished_at", finished_at cannot be nil.'
      end
      @finished_at = finished_at
    end

    # Custom attribute writer method with validation
    # @param service [Object] Object to be assigned
    # @!visibility private
    def service=(service)
      if service.nil?
        fail ArgumentError, 'invalid value for "service", service cannot be nil.'
      end
      @service = service
    end

    # Custom attribute writer method with validation
    # @param started_at [Object] Object to be assigned
    # @!visibility private
    def started_at=(started_at)
      if started_at.nil?
        fail ArgumentError, 'invalid value for "started_at", started_at cannot be nil.'
      end
      @started_at = started_at
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          env == o.env &&
          finished_at == o.finished_at &&
          git == o.git &&
          id == o.id &&
          service == o.service &&
          started_at == o.started_at &&
          version == o.version
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [env, finished_at, git, id, service, started_at, version].hash
    end
  end
end
