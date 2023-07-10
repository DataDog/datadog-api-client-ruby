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
  # Downtime details.
  class DowntimeResponseAttributes
    include BaseGenericModel

    # Time that the downtime was canceled.
    attr_accessor :canceled

    # Creation time of the downtime.
    attr_accessor :created

    # The timezone in which to display the downtime's start and end times in Datadog applications. This is not used
    # as an offset for scheduling.
    attr_accessor :display_timezone

    # A message to include with notifications for this downtime. Email notifications can be sent to specific users
    # by using the same `@username` notation as events.
    attr_accessor :message

    # Time that the downtime was last modified.
    attr_accessor :modified

    # Monitor identifier for the downtime.
    attr_accessor :monitor_identifier

    # If the first recovery notification during a downtime should be muted.
    attr_accessor :mute_first_recovery_notification

    # States that will trigger a monitor notification when the `notify_end_types` action occurs.
    attr_accessor :notify_end_states

    # Actions that will trigger a monitor notification if the downtime is in the `notify_end_types` state.
    attr_accessor :notify_end_types

    # The schedule that defines when the monitor starts, stops, and recurs. There are two types of schedules:
    # one-time and recurring. Recurring schedules may have up to five RRULE-based recurrences. If no schedules are
    # provided, the downtime will begin immediately and never end.
    attr_accessor :schedule

    # The scope to which the downtime applies. Must follow the [common search syntax](https://docs.datadoghq.com/logs/explorer/search_syntax/).
    attr_accessor :scope

    # The current status of the downtime.
    attr_accessor :status

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'canceled' => :'canceled',
        :'created' => :'created',
        :'display_timezone' => :'display_timezone',
        :'message' => :'message',
        :'modified' => :'modified',
        :'monitor_identifier' => :'monitor_identifier',
        :'mute_first_recovery_notification' => :'mute_first_recovery_notification',
        :'notify_end_states' => :'notify_end_states',
        :'notify_end_types' => :'notify_end_types',
        :'schedule' => :'schedule',
        :'scope' => :'scope',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'canceled' => :'Time',
        :'created' => :'Time',
        :'display_timezone' => :'String',
        :'message' => :'String',
        :'modified' => :'Time',
        :'monitor_identifier' => :'DowntimeMonitorIdentifier',
        :'mute_first_recovery_notification' => :'Boolean',
        :'notify_end_states' => :'Array<DowntimeNotifyEndStateTypes>',
        :'notify_end_types' => :'Array<DowntimeNotifyEndStateActions>',
        :'schedule' => :'DowntimeScheduleResponse',
        :'scope' => :'String',
        :'status' => :'DowntimeStatus'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'canceled',
        :'display_timezone',
        :'message',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::DowntimeResponseAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::DowntimeResponseAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'canceled')
        self.canceled = attributes[:'canceled']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'display_timezone')
        self.display_timezone = attributes[:'display_timezone']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'modified')
        self.modified = attributes[:'modified']
      end

      if attributes.key?(:'monitor_identifier')
        self.monitor_identifier = attributes[:'monitor_identifier']
      end

      if attributes.key?(:'mute_first_recovery_notification')
        self.mute_first_recovery_notification = attributes[:'mute_first_recovery_notification']
      end

      if attributes.key?(:'notify_end_states')
        if (value = attributes[:'notify_end_states']).is_a?(Array)
          self.notify_end_states = value
        end
      end

      if attributes.key?(:'notify_end_types')
        if (value = attributes[:'notify_end_types']).is_a?(Array)
          self.notify_end_types = value
        end
      end

      if attributes.key?(:'schedule')
        self.schedule = attributes[:'schedule']
      end

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          canceled == o.canceled &&
          created == o.created &&
          display_timezone == o.display_timezone &&
          message == o.message &&
          modified == o.modified &&
          monitor_identifier == o.monitor_identifier &&
          mute_first_recovery_notification == o.mute_first_recovery_notification &&
          notify_end_states == o.notify_end_states &&
          notify_end_types == o.notify_end_types &&
          schedule == o.schedule &&
          scope == o.scope &&
          status == o.status
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [canceled, created, display_timezone, message, modified, monitor_identifier, mute_first_recovery_notification, notify_end_states, notify_end_types, schedule, scope, status].hash
    end
  end
end
