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
  # Schema for a GitHub webhook-based trigger.
  class GithubWebhookTriggerWrapper
    include BaseGenericModel

    # Trigger a workflow from a GitHub webhook. To trigger a workflow from GitHub, you must set a `webhookSecret`. In your GitHub Webhook Settings, set the Payload URL to "base_url"/api/v2/workflows/"workflow_id"/webhook?orgId="org_id", select application/json for the content type, and be highly recommend enabling SSL verification for security. The workflow must be published.
    attr_reader :github_webhook_trigger

    # A list of steps that run first after a trigger fires.
    attr_accessor :start_step_names

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'github_webhook_trigger' => :'githubWebhookTrigger',
        :'start_step_names' => :'startStepNames'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'github_webhook_trigger' => :'GithubWebhookTrigger',
        :'start_step_names' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::GithubWebhookTriggerWrapper` initialize method"
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

      if attributes.key?(:'github_webhook_trigger')
        self.github_webhook_trigger = attributes[:'github_webhook_trigger']
      end

      if attributes.key?(:'start_step_names')
        if (value = attributes[:'start_step_names']).is_a?(Array)
          self.start_step_names = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @github_webhook_trigger.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param github_webhook_trigger [Object] Object to be assigned
    # @!visibility private
    def github_webhook_trigger=(github_webhook_trigger)
      if github_webhook_trigger.nil?
        fail ArgumentError, 'invalid value for "github_webhook_trigger", github_webhook_trigger cannot be nil.'
      end
      @github_webhook_trigger = github_webhook_trigger
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
          github_webhook_trigger == o.github_webhook_trigger &&
          start_step_names == o.start_step_names &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [github_webhook_trigger, start_step_names, additional_properties].hash
    end
  end
end
