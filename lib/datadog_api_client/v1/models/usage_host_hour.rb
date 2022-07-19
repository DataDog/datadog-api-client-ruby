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
  # Number of hosts/containers recorded for each hour for a given organization.
  class UsageHostHour
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Contains the total number of infrastructure hosts reporting
    # during a given hour that were running the Datadog Agent.
    attr_accessor :agent_host_count

    # Contains the total number of hosts that reported through Alibaba integration
    # (and were NOT running the Datadog Agent).
    attr_accessor :alibaba_host_count

    # Contains the total number of Azure App Services hosts using APM.
    attr_accessor :apm_azure_app_service_host_count

    # Shows the total number of hosts using APM during the hour,
    # these are counted as billable (except during trial periods).
    attr_accessor :apm_host_count

    # Contains the total number of hosts that reported through the AWS integration
    # (and were NOT running the Datadog Agent).
    attr_accessor :aws_host_count

    # Contains the total number of hosts that reported through Azure integration
    # (and were NOT running the Datadog Agent).
    attr_accessor :azure_host_count

    # Shows the total number of containers reported by the Docker integration during the hour.
    attr_accessor :container_count

    # Contains the total number of hosts that reported through the Google Cloud integration
    # (and were NOT running the Datadog Agent).
    attr_accessor :gcp_host_count

    # Contains the total number of Heroku dynos reported by the Datadog Agent.
    attr_accessor :heroku_host_count

    # Contains the total number of billable infrastructure hosts reporting during a given hour.
    # This is the sum of `agent_host_count`, `aws_host_count`, and `gcp_host_count`.
    attr_accessor :host_count

    # The hour for the usage.
    attr_accessor :hour

    # Contains the total number of hosts that reported through the Azure App Services integration
    # (and were NOT running the Datadog Agent).
    attr_accessor :infra_azure_app_service

    # Contains the total number of hosts reported by Datadog exporter for the OpenTelemetry Collector.
    attr_accessor :opentelemetry_host_count

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # Contains the total number of hosts that reported through vSphere integration
    # (and were NOT running the Datadog Agent).
    attr_accessor :vsphere_host_count

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'agent_host_count' => :'agent_host_count',
        :'alibaba_host_count' => :'alibaba_host_count',
        :'apm_azure_app_service_host_count' => :'apm_azure_app_service_host_count',
        :'apm_host_count' => :'apm_host_count',
        :'aws_host_count' => :'aws_host_count',
        :'azure_host_count' => :'azure_host_count',
        :'container_count' => :'container_count',
        :'gcp_host_count' => :'gcp_host_count',
        :'heroku_host_count' => :'heroku_host_count',
        :'host_count' => :'host_count',
        :'hour' => :'hour',
        :'infra_azure_app_service' => :'infra_azure_app_service',
        :'opentelemetry_host_count' => :'opentelemetry_host_count',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id',
        :'vsphere_host_count' => :'vsphere_host_count'
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
        :'agent_host_count' => :'Integer',
        :'alibaba_host_count' => :'Integer',
        :'apm_azure_app_service_host_count' => :'Integer',
        :'apm_host_count' => :'Integer',
        :'aws_host_count' => :'Integer',
        :'azure_host_count' => :'Integer',
        :'container_count' => :'Integer',
        :'gcp_host_count' => :'Integer',
        :'heroku_host_count' => :'Integer',
        :'host_count' => :'Integer',
        :'hour' => :'Time',
        :'infra_azure_app_service' => :'Integer',
        :'opentelemetry_host_count' => :'Integer',
        :'org_name' => :'String',
        :'public_id' => :'String',
        :'vsphere_host_count' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageHostHour` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageHostHour`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'agent_host_count')
        self.agent_host_count = attributes[:'agent_host_count']
      end

      if attributes.key?(:'alibaba_host_count')
        self.alibaba_host_count = attributes[:'alibaba_host_count']
      end

      if attributes.key?(:'apm_azure_app_service_host_count')
        self.apm_azure_app_service_host_count = attributes[:'apm_azure_app_service_host_count']
      end

      if attributes.key?(:'apm_host_count')
        self.apm_host_count = attributes[:'apm_host_count']
      end

      if attributes.key?(:'aws_host_count')
        self.aws_host_count = attributes[:'aws_host_count']
      end

      if attributes.key?(:'azure_host_count')
        self.azure_host_count = attributes[:'azure_host_count']
      end

      if attributes.key?(:'container_count')
        self.container_count = attributes[:'container_count']
      end

      if attributes.key?(:'gcp_host_count')
        self.gcp_host_count = attributes[:'gcp_host_count']
      end

      if attributes.key?(:'heroku_host_count')
        self.heroku_host_count = attributes[:'heroku_host_count']
      end

      if attributes.key?(:'host_count')
        self.host_count = attributes[:'host_count']
      end

      if attributes.key?(:'hour')
        self.hour = attributes[:'hour']
      end

      if attributes.key?(:'infra_azure_app_service')
        self.infra_azure_app_service = attributes[:'infra_azure_app_service']
      end

      if attributes.key?(:'opentelemetry_host_count')
        self.opentelemetry_host_count = attributes[:'opentelemetry_host_count']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'vsphere_host_count')
        self.vsphere_host_count = attributes[:'vsphere_host_count']
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
          agent_host_count == o.agent_host_count &&
          alibaba_host_count == o.alibaba_host_count &&
          apm_azure_app_service_host_count == o.apm_azure_app_service_host_count &&
          apm_host_count == o.apm_host_count &&
          aws_host_count == o.aws_host_count &&
          azure_host_count == o.azure_host_count &&
          container_count == o.container_count &&
          gcp_host_count == o.gcp_host_count &&
          heroku_host_count == o.heroku_host_count &&
          host_count == o.host_count &&
          hour == o.hour &&
          infra_azure_app_service == o.infra_azure_app_service &&
          opentelemetry_host_count == o.opentelemetry_host_count &&
          org_name == o.org_name &&
          public_id == o.public_id &&
          vsphere_host_count == o.vsphere_host_count
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
      [agent_host_count, alibaba_host_count, apm_azure_app_service_host_count, apm_host_count, aws_host_count, azure_host_count, container_count, gcp_host_count, heroku_host_count, host_count, hour, infra_azure_app_service, opentelemetry_host_count, org_name, public_id, vsphere_host_count].hash
    end
  end
end
