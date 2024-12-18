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
  # A CSM Agent returned by the API.
  class CsmAgentsAttributes
    include BaseGenericModel

    # Version of the Datadog Agent.
    attr_accessor :agent_version

    # AWS Fargate details.
    attr_accessor :aws_fargate

    # List of cluster names associated with the Agent.
    attr_accessor :cluster_name

    # Unique identifier for the Datadog Agent.
    attr_accessor :datadog_agent

    # ARN of the ECS Fargate task.
    attr_accessor :ecs_fargate_task_arn

    # List of environments associated with the Agent.
    attr_accessor :envs

    # ID of the host.
    attr_accessor :host_id

    # Name of the host.
    attr_accessor :hostname

    # Version of the installer used for installing the Datadog Agent.
    attr_accessor :install_method_installer_version

    # Tool used for installing the Datadog Agent.
    attr_accessor :install_method_tool

    # Indicates if CSM VM Containers is enabled.
    attr_accessor :is_csm_vm_containers_enabled

    # Indicates if CSM VM Hosts is enabled.
    attr_accessor :is_csm_vm_hosts_enabled

    # Indicates if CSPM is enabled.
    attr_accessor :is_cspm_enabled

    # Indicates if CWS is enabled.
    attr_accessor :is_cws_enabled

    # Indicates if CWS Remote Configuration is enabled.
    attr_accessor :is_cws_remote_configuration_enabled

    # Indicates if Remote Configuration is enabled.
    attr_accessor :is_remote_configuration_enabled

    # Operating system of the host.
    attr_accessor :os

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'agent_version' => :'agent_version',
        :'aws_fargate' => :'aws_fargate',
        :'cluster_name' => :'cluster_name',
        :'datadog_agent' => :'datadog_agent',
        :'ecs_fargate_task_arn' => :'ecs_fargate_task_arn',
        :'envs' => :'envs',
        :'host_id' => :'host_id',
        :'hostname' => :'hostname',
        :'install_method_installer_version' => :'install_method_installer_version',
        :'install_method_tool' => :'install_method_tool',
        :'is_csm_vm_containers_enabled' => :'is_csm_vm_containers_enabled',
        :'is_csm_vm_hosts_enabled' => :'is_csm_vm_hosts_enabled',
        :'is_cspm_enabled' => :'is_cspm_enabled',
        :'is_cws_enabled' => :'is_cws_enabled',
        :'is_cws_remote_configuration_enabled' => :'is_cws_remote_configuration_enabled',
        :'is_remote_configuration_enabled' => :'is_remote_configuration_enabled',
        :'os' => :'os'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'agent_version' => :'String',
        :'aws_fargate' => :'String',
        :'cluster_name' => :'Array<String>',
        :'datadog_agent' => :'String',
        :'ecs_fargate_task_arn' => :'String',
        :'envs' => :'Array<String>',
        :'host_id' => :'Integer',
        :'hostname' => :'String',
        :'install_method_installer_version' => :'String',
        :'install_method_tool' => :'String',
        :'is_csm_vm_containers_enabled' => :'Boolean',
        :'is_csm_vm_hosts_enabled' => :'Boolean',
        :'is_cspm_enabled' => :'Boolean',
        :'is_cws_enabled' => :'Boolean',
        :'is_cws_remote_configuration_enabled' => :'Boolean',
        :'is_remote_configuration_enabled' => :'Boolean',
        :'os' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'envs',
        :'is_csm_vm_containers_enabled',
        :'is_csm_vm_hosts_enabled',
        :'is_cspm_enabled',
        :'is_cws_enabled',
        :'is_cws_remote_configuration_enabled',
        :'is_remote_configuration_enabled',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CsmAgentsAttributes` initialize method"
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

      if attributes.key?(:'agent_version')
        self.agent_version = attributes[:'agent_version']
      end

      if attributes.key?(:'aws_fargate')
        self.aws_fargate = attributes[:'aws_fargate']
      end

      if attributes.key?(:'cluster_name')
        if (value = attributes[:'cluster_name']).is_a?(Array)
          self.cluster_name = value
        end
      end

      if attributes.key?(:'datadog_agent')
        self.datadog_agent = attributes[:'datadog_agent']
      end

      if attributes.key?(:'ecs_fargate_task_arn')
        self.ecs_fargate_task_arn = attributes[:'ecs_fargate_task_arn']
      end

      if attributes.key?(:'envs')
        if (value = attributes[:'envs']).is_a?(Array)
          self.envs = value
        end
      end

      if attributes.key?(:'host_id')
        self.host_id = attributes[:'host_id']
      end

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.key?(:'install_method_installer_version')
        self.install_method_installer_version = attributes[:'install_method_installer_version']
      end

      if attributes.key?(:'install_method_tool')
        self.install_method_tool = attributes[:'install_method_tool']
      end

      if attributes.key?(:'is_csm_vm_containers_enabled')
        self.is_csm_vm_containers_enabled = attributes[:'is_csm_vm_containers_enabled']
      end

      if attributes.key?(:'is_csm_vm_hosts_enabled')
        self.is_csm_vm_hosts_enabled = attributes[:'is_csm_vm_hosts_enabled']
      end

      if attributes.key?(:'is_cspm_enabled')
        self.is_cspm_enabled = attributes[:'is_cspm_enabled']
      end

      if attributes.key?(:'is_cws_enabled')
        self.is_cws_enabled = attributes[:'is_cws_enabled']
      end

      if attributes.key?(:'is_cws_remote_configuration_enabled')
        self.is_cws_remote_configuration_enabled = attributes[:'is_cws_remote_configuration_enabled']
      end

      if attributes.key?(:'is_remote_configuration_enabled')
        self.is_remote_configuration_enabled = attributes[:'is_remote_configuration_enabled']
      end

      if attributes.key?(:'os')
        self.os = attributes[:'os']
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
          agent_version == o.agent_version &&
          aws_fargate == o.aws_fargate &&
          cluster_name == o.cluster_name &&
          datadog_agent == o.datadog_agent &&
          ecs_fargate_task_arn == o.ecs_fargate_task_arn &&
          envs == o.envs &&
          host_id == o.host_id &&
          hostname == o.hostname &&
          install_method_installer_version == o.install_method_installer_version &&
          install_method_tool == o.install_method_tool &&
          is_csm_vm_containers_enabled == o.is_csm_vm_containers_enabled &&
          is_csm_vm_hosts_enabled == o.is_csm_vm_hosts_enabled &&
          is_cspm_enabled == o.is_cspm_enabled &&
          is_cws_enabled == o.is_cws_enabled &&
          is_cws_remote_configuration_enabled == o.is_cws_remote_configuration_enabled &&
          is_remote_configuration_enabled == o.is_remote_configuration_enabled &&
          os == o.os &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [agent_version, aws_fargate, cluster_name, datadog_agent, ecs_fargate_task_arn, envs, host_id, hostname, install_method_installer_version, install_method_tool, is_csm_vm_containers_enabled, is_csm_vm_hosts_enabled, is_cspm_enabled, is_cws_enabled, is_cws_remote_configuration_enabled, is_remote_configuration_enabled, os, additional_properties].hash
    end
  end
end