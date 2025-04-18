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
  # Attributes describing a triage state update operation over a security signal.
  class SecurityMonitoringSignalTriageAttributes
    include BaseGenericModel

    # Optional comment to display on archived signals.
    attr_accessor :archive_comment

    # Timestamp of the last edit to the comment.
    attr_reader :archive_comment_timestamp

    # Object representing a given user entity.
    attr_accessor :archive_comment_user

    # Reason a signal is archived.
    attr_accessor :archive_reason

    # Object representing a given user entity.
    attr_reader :assignee

    # Array of incidents that are associated with this signal.
    attr_reader :incident_ids

    # The new triage state of the signal.
    attr_reader :state

    # Timestamp of the last update to the signal state.
    attr_reader :state_update_timestamp

    # Object representing a given user entity.
    attr_accessor :state_update_user

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'archive_comment' => :'archive_comment',
        :'archive_comment_timestamp' => :'archive_comment_timestamp',
        :'archive_comment_user' => :'archive_comment_user',
        :'archive_reason' => :'archive_reason',
        :'assignee' => :'assignee',
        :'incident_ids' => :'incident_ids',
        :'state' => :'state',
        :'state_update_timestamp' => :'state_update_timestamp',
        :'state_update_user' => :'state_update_user'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'archive_comment' => :'String',
        :'archive_comment_timestamp' => :'Integer',
        :'archive_comment_user' => :'SecurityMonitoringTriageUser',
        :'archive_reason' => :'SecurityMonitoringSignalArchiveReason',
        :'assignee' => :'SecurityMonitoringTriageUser',
        :'incident_ids' => :'Array<Integer>',
        :'state' => :'SecurityMonitoringSignalState',
        :'state_update_timestamp' => :'Integer',
        :'state_update_user' => :'SecurityMonitoringTriageUser'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringSignalTriageAttributes` initialize method"
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

      if attributes.key?(:'archive_comment')
        self.archive_comment = attributes[:'archive_comment']
      end

      if attributes.key?(:'archive_comment_timestamp')
        self.archive_comment_timestamp = attributes[:'archive_comment_timestamp']
      end

      if attributes.key?(:'archive_comment_user')
        self.archive_comment_user = attributes[:'archive_comment_user']
      end

      if attributes.key?(:'archive_reason')
        self.archive_reason = attributes[:'archive_reason']
      end

      if attributes.key?(:'assignee')
        self.assignee = attributes[:'assignee']
      end

      if attributes.key?(:'incident_ids')
        if (value = attributes[:'incident_ids']).is_a?(Array)
          self.incident_ids = value
        end
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'state_update_timestamp')
        self.state_update_timestamp = attributes[:'state_update_timestamp']
      end

      if attributes.key?(:'state_update_user')
        self.state_update_user = attributes[:'state_update_user']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@archive_comment_timestamp.nil? && @archive_comment_timestamp < 0
      return false if @assignee.nil?
      return false if @incident_ids.nil?
      return false if @state.nil?
      return false if !@state_update_timestamp.nil? && @state_update_timestamp < 0
      true
    end

    # Custom attribute writer method with validation
    # @param archive_comment_timestamp [Object] Object to be assigned
    # @!visibility private
    def archive_comment_timestamp=(archive_comment_timestamp)
      if !archive_comment_timestamp.nil? && archive_comment_timestamp < 0
        fail ArgumentError, 'invalid value for "archive_comment_timestamp", must be greater than or equal to 0.'
      end
      @archive_comment_timestamp = archive_comment_timestamp
    end

    # Custom attribute writer method with validation
    # @param assignee [Object] Object to be assigned
    # @!visibility private
    def assignee=(assignee)
      if assignee.nil?
        fail ArgumentError, 'invalid value for "assignee", assignee cannot be nil.'
      end
      @assignee = assignee
    end

    # Custom attribute writer method with validation
    # @param incident_ids [Object] Object to be assigned
    # @!visibility private
    def incident_ids=(incident_ids)
      if incident_ids.nil?
        fail ArgumentError, 'invalid value for "incident_ids", incident_ids cannot be nil.'
      end
      @incident_ids = incident_ids
    end

    # Custom attribute writer method with validation
    # @param state [Object] Object to be assigned
    # @!visibility private
    def state=(state)
      if state.nil?
        fail ArgumentError, 'invalid value for "state", state cannot be nil.'
      end
      @state = state
    end

    # Custom attribute writer method with validation
    # @param state_update_timestamp [Object] Object to be assigned
    # @!visibility private
    def state_update_timestamp=(state_update_timestamp)
      if !state_update_timestamp.nil? && state_update_timestamp < 0
        fail ArgumentError, 'invalid value for "state_update_timestamp", must be greater than or equal to 0.'
      end
      @state_update_timestamp = state_update_timestamp
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
          archive_comment == o.archive_comment &&
          archive_comment_timestamp == o.archive_comment_timestamp &&
          archive_comment_user == o.archive_comment_user &&
          archive_reason == o.archive_reason &&
          assignee == o.assignee &&
          incident_ids == o.incident_ids &&
          state == o.state &&
          state_update_timestamp == o.state_update_timestamp &&
          state_update_user == o.state_update_user &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [archive_comment, archive_comment_timestamp, archive_comment_user, archive_reason, assignee, incident_ids, state, state_update_timestamp, state_update_user, additional_properties].hash
    end
  end
end
