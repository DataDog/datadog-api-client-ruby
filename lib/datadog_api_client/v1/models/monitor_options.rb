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
  # List of options associated with your monitor.
  class MonitorOptions
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Type of aggregation performed in the monitor query.
    attr_accessor :aggregation

    # IDs of the device the Synthetics monitor is running on.
    attr_accessor :device_ids

    # Whether or not to send a log sample when the log monitor triggers.
    attr_accessor :enable_logs_sample

    # We recommend using the [is_renotify](https://docs.datadoghq.com/monitors/notify/?tab=is_alert#renotify),
    # block in the original message instead.
    # A message to include with a re-notification. Supports the `@username` notification we allow elsewhere.
    # Not applicable if `renotify_interval` is `None`.
    attr_accessor :escalation_message

    # Time (in seconds) to delay evaluation, as a non-negative integer. For example, if the value is set to `300` (5min),
    # the timeframe is set to `last_5m` and the time is 7:00, the monitor evaluates data from 6:50 to 6:55.
    # This is useful for AWS CloudWatch and other backfilled metrics to ensure the monitor always has data during evaluation.
    attr_accessor :evaluation_delay

    # Whether the log alert monitor triggers a single alert or multiple alerts when any group breaches a threshold.
    attr_accessor :groupby_simple_monitor

    # A Boolean indicating whether notifications from this monitor automatically inserts its triggering tags into the title.
    #
    # **Examples**
    # - If `True`, `[Triggered on {host:h1}] Monitor Title`
    # - If `False`, `[Triggered] Monitor Title`
    attr_accessor :include_tags

    # Whether or not the monitor is locked (only editable by creator and admins).
    attr_accessor :locked

    # How long the test should be in failure before alerting (integer, number of seconds, max 7200).
    attr_accessor :min_failure_duration

    # The minimum number of locations in failure at the same time during
    # at least one moment in the `min_failure_duration` period (`min_location_failed` and `min_failure_duration`
    # are part of the advanced alerting rules - integer, >= 1).
    attr_accessor :min_location_failed

    # Time (in seconds) to skip evaluations for new groups.
    #
    # For example, this option can be used to skip evaluations for new hosts while they initialize.
    #
    # Must be a non negative integer.
    attr_accessor :new_group_delay

    # Time (in seconds) to allow a host to boot and applications
    # to fully start before starting the evaluation of monitor results.
    # Should be a non negative integer.
    #
    # Use new_group_delay instead.
    attr_accessor :new_host_delay

    # The number of minutes before a monitor notifies after data stops reporting.
    # Datadog recommends at least 2x the monitor timeframe for query alerts or 2 minutes for service checks.
    # If omitted, 2x the evaluation timeframe is used for query alerts, and 24 hours is used for service checks.
    attr_accessor :no_data_timeframe

    # A Boolean indicating whether tagged users is notified on changes to this monitor.
    attr_accessor :notify_audit

    # A Boolean indicating whether this monitor notifies when data stops reporting.
    attr_accessor :notify_no_data

    # The number of minutes after the last notification before a monitor re-notifies on the current status.
    # It only re-notifies if it’s not resolved.
    attr_accessor :renotify_interval

    # The number of times re-notification messages should be sent on the current status at the provided re-notification interval.
    attr_accessor :renotify_occurrences

    # The types of monitor statuses for which re-notification messages are sent.
    attr_accessor :renotify_statuses

    # A Boolean indicating whether this monitor needs a full window of data before it’s evaluated.
    # We highly recommend you set this to `false` for sparse metrics,
    # otherwise some evaluations are skipped. Default is false.
    attr_accessor :require_full_window

    # Information about the downtime applied to the monitor.
    attr_accessor :silenced

    # ID of the corresponding Synthetic check.
    attr_accessor :synthetics_check_id

    # Alerting time window options.
    attr_accessor :threshold_windows

    # List of the different monitor threshold available.
    attr_accessor :thresholds

    # The number of hours of the monitor not reporting data before it automatically resolves from a triggered state. The minimum allowed value is 0 hours. The maximum allowed value is 24 hours.
    attr_accessor :timeout_h

    # List of requests that can be used in the monitor query. **This feature is currently in beta.**
    attr_accessor :variables

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregation' => :'aggregation',
        :'device_ids' => :'device_ids',
        :'enable_logs_sample' => :'enable_logs_sample',
        :'escalation_message' => :'escalation_message',
        :'evaluation_delay' => :'evaluation_delay',
        :'groupby_simple_monitor' => :'groupby_simple_monitor',
        :'include_tags' => :'include_tags',
        :'locked' => :'locked',
        :'min_failure_duration' => :'min_failure_duration',
        :'min_location_failed' => :'min_location_failed',
        :'new_group_delay' => :'new_group_delay',
        :'new_host_delay' => :'new_host_delay',
        :'no_data_timeframe' => :'no_data_timeframe',
        :'notify_audit' => :'notify_audit',
        :'notify_no_data' => :'notify_no_data',
        :'renotify_interval' => :'renotify_interval',
        :'renotify_occurrences' => :'renotify_occurrences',
        :'renotify_statuses' => :'renotify_statuses',
        :'require_full_window' => :'require_full_window',
        :'silenced' => :'silenced',
        :'synthetics_check_id' => :'synthetics_check_id',
        :'threshold_windows' => :'threshold_windows',
        :'thresholds' => :'thresholds',
        :'timeout_h' => :'timeout_h',
        :'variables' => :'variables'
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
        :'aggregation' => :'MonitorOptionsAggregation',
        :'device_ids' => :'Array<MonitorDeviceID>',
        :'enable_logs_sample' => :'Boolean',
        :'escalation_message' => :'String',
        :'evaluation_delay' => :'Integer',
        :'groupby_simple_monitor' => :'Boolean',
        :'include_tags' => :'Boolean',
        :'locked' => :'Boolean',
        :'min_failure_duration' => :'Integer',
        :'min_location_failed' => :'Integer',
        :'new_group_delay' => :'Integer',
        :'new_host_delay' => :'Integer',
        :'no_data_timeframe' => :'Integer',
        :'notify_audit' => :'Boolean',
        :'notify_no_data' => :'Boolean',
        :'renotify_interval' => :'Integer',
        :'renotify_occurrences' => :'Integer',
        :'renotify_statuses' => :'Array<MonitorRenotifyStatusType>',
        :'require_full_window' => :'Boolean',
        :'silenced' => :'Hash<String, Integer>',
        :'synthetics_check_id' => :'String',
        :'threshold_windows' => :'MonitorThresholdWindowOptions',
        :'thresholds' => :'MonitorThresholds',
        :'timeout_h' => :'Integer',
        :'variables' => :'Array<MonitorFormulaAndFunctionQueryDefinition>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'evaluation_delay',
        :'min_failure_duration',
        :'min_location_failed',
        :'new_group_delay',
        :'new_host_delay',
        :'no_data_timeframe',
        :'renotify_interval',
        :'renotify_occurrences',
        :'renotify_statuses',
        :'synthetics_check_id',
        :'timeout_h',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::MonitorOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::MonitorOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aggregation')
        self.aggregation = attributes[:'aggregation']
      end

      if attributes.key?(:'device_ids')
        if (value = attributes[:'device_ids']).is_a?(Array)
          self.device_ids = value
        end
      end

      if attributes.key?(:'enable_logs_sample')
        self.enable_logs_sample = attributes[:'enable_logs_sample']
      end

      if attributes.key?(:'escalation_message')
        self.escalation_message = attributes[:'escalation_message']
      else
        self.escalation_message = 'none'
      end

      if attributes.key?(:'evaluation_delay')
        self.evaluation_delay = attributes[:'evaluation_delay']
      end

      if attributes.key?(:'groupby_simple_monitor')
        self.groupby_simple_monitor = attributes[:'groupby_simple_monitor']
      end

      if attributes.key?(:'include_tags')
        self.include_tags = attributes[:'include_tags']
      else
        self.include_tags = true
      end

      if attributes.key?(:'locked')
        self.locked = attributes[:'locked']
      end

      if attributes.key?(:'min_failure_duration')
        self.min_failure_duration = attributes[:'min_failure_duration']
      else
        self.min_failure_duration = 0
      end

      if attributes.key?(:'min_location_failed')
        self.min_location_failed = attributes[:'min_location_failed']
      else
        self.min_location_failed = 1
      end

      if attributes.key?(:'new_group_delay')
        self.new_group_delay = attributes[:'new_group_delay']
      end

      if attributes.key?(:'new_host_delay')
        self.new_host_delay = attributes[:'new_host_delay']
      else
        self.new_host_delay = 300
      end

      if attributes.key?(:'no_data_timeframe')
        self.no_data_timeframe = attributes[:'no_data_timeframe']
      end

      if attributes.key?(:'notify_audit')
        self.notify_audit = attributes[:'notify_audit']
      else
        self.notify_audit = false
      end

      if attributes.key?(:'notify_no_data')
        self.notify_no_data = attributes[:'notify_no_data']
      else
        self.notify_no_data = false
      end

      if attributes.key?(:'renotify_interval')
        self.renotify_interval = attributes[:'renotify_interval']
      end

      if attributes.key?(:'renotify_occurrences')
        self.renotify_occurrences = attributes[:'renotify_occurrences']
      end

      if attributes.key?(:'renotify_statuses')
        if (value = attributes[:'renotify_statuses']).is_a?(Array)
          self.renotify_statuses = value
        end
      end

      if attributes.key?(:'require_full_window')
        self.require_full_window = attributes[:'require_full_window']
      end

      if attributes.key?(:'silenced')
        self.silenced = attributes[:'silenced']
      end

      if attributes.key?(:'synthetics_check_id')
        self.synthetics_check_id = attributes[:'synthetics_check_id']
      end

      if attributes.key?(:'threshold_windows')
        self.threshold_windows = attributes[:'threshold_windows']
      end

      if attributes.key?(:'thresholds')
        self.thresholds = attributes[:'thresholds']
      end

      if attributes.key?(:'timeout_h')
        self.timeout_h = attributes[:'timeout_h']
      end

      if attributes.key?(:'variables')
        if (value = attributes[:'variables']).is_a?(Array)
          self.variables = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if !@min_failure_duration.nil? && @min_failure_duration > 7200
        invalid_properties.push('invalid value for "min_failure_duration", must be smaller than or equal to 7200.')
      end
      if !@min_failure_duration.nil? && @min_failure_duration < 0
        invalid_properties.push('invalid value for "min_failure_duration", must be greater than or equal to 0.')
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@min_failure_duration.nil? && @min_failure_duration > 7200
      return false if !@min_failure_duration.nil? && @min_failure_duration < 0
      true
    end

    # Custom attribute writer method with validation
    # @param min_failure_duration [Object] Object to be assigned
    # @!visibility private
    def min_failure_duration=(min_failure_duration)
      if !min_failure_duration.nil? && min_failure_duration > 7200
        fail ArgumentError, 'invalid value for "min_failure_duration", must be smaller than or equal to 7200.'
      end
      if !min_failure_duration.nil? && min_failure_duration < 0
        fail ArgumentError, 'invalid value for "min_failure_duration", must be greater than or equal to 0.'
      end
      @min_failure_duration = min_failure_duration
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregation == o.aggregation &&
          device_ids == o.device_ids &&
          enable_logs_sample == o.enable_logs_sample &&
          escalation_message == o.escalation_message &&
          evaluation_delay == o.evaluation_delay &&
          groupby_simple_monitor == o.groupby_simple_monitor &&
          include_tags == o.include_tags &&
          locked == o.locked &&
          min_failure_duration == o.min_failure_duration &&
          min_location_failed == o.min_location_failed &&
          new_group_delay == o.new_group_delay &&
          new_host_delay == o.new_host_delay &&
          no_data_timeframe == o.no_data_timeframe &&
          notify_audit == o.notify_audit &&
          notify_no_data == o.notify_no_data &&
          renotify_interval == o.renotify_interval &&
          renotify_occurrences == o.renotify_occurrences &&
          renotify_statuses == o.renotify_statuses &&
          require_full_window == o.require_full_window &&
          silenced == o.silenced &&
          synthetics_check_id == o.synthetics_check_id &&
          threshold_windows == o.threshold_windows &&
          thresholds == o.thresholds &&
          timeout_h == o.timeout_h &&
          variables == o.variables
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
      [aggregation, device_ids, enable_logs_sample, escalation_message, evaluation_delay, groupby_simple_monitor, include_tags, locked, min_failure_duration, min_location_failed, new_group_delay, new_host_delay, no_data_timeframe, notify_audit, notify_no_data, renotify_interval, renotify_occurrences, renotify_statuses, require_full_window, silenced, synthetics_check_id, threshold_windows, thresholds, timeout_h, variables].hash
    end
  end
end
