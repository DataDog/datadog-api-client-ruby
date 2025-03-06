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
  # Schema for a Slack-based trigger.
  class SlackTriggerWrapper
    include BaseGenericModel

    # Trigger a workflow VIA Slack. The workflow must be published.
    attr_reader :slack_trigger

    # A list of steps that run first after a trigger fires.
    attr_accessor :start_step_names

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'slack_trigger' => :'slackTrigger',
        :'start_step_names' => :'startStepNames'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'slack_trigger' => :'Object',
        :'start_step_names' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SlackTriggerWrapper` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SlackTriggerWrapper`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'slack_trigger')
        self.slack_trigger = attributes[:'slack_trigger']
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
      return false if @slack_trigger.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param slack_trigger [Object] Object to be assigned
    # @!visibility private
    def slack_trigger=(slack_trigger)
      if slack_trigger.nil?
        fail ArgumentError, 'invalid value for "slack_trigger", slack_trigger cannot be nil.'
      end
      @slack_trigger = slack_trigger
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          slack_trigger == o.slack_trigger &&
          start_step_names == o.start_step_names
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [slack_trigger, start_step_names].hash
    end
  end
end
