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
  # An object that holds an SLI value and its associated data. It can represent an SLO's overall SLI value.
  # This can also represent the SLI value for a specific monitor in multi-monitor SLOs, or a group in grouped SLOs.
  class SLOHistoryMonitor
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # A mapping of threshold `timeframe` to the remaining error budget.
    attr_accessor :error_budget_remaining

    # An array of error objects returned while querying the history data for the service level objective.
    attr_accessor :errors

    # For groups in a grouped SLO, this is the group name.
    attr_accessor :group

    # For `monitor` based SLOs, this includes the aggregated history as arrays that include time series and uptime data where `0=monitor` is in `OK` state and `1=monitor` is in `alert` state.
    attr_accessor :history

    # For `monitor` based SLOs, this is the last modified timestamp in epoch seconds of the monitor.
    attr_accessor :monitor_modified

    # For `monitor` based SLOs, this describes the type of monitor.
    attr_accessor :monitor_type

    # For groups in a grouped SLO, this is the group name. For monitors in a multi-monitor SLO, this is the monitor name.
    attr_accessor :name

    # The amount of decimal places the SLI value is accurate to for the given from `&&` to timestamp. Use `span_precision` instead.
    attr_accessor :precision

    # For `monitor` based SLOs, when `true` this indicates that a replay is in progress to give an accurate uptime
    # calculation.
    attr_accessor :preview

    # The current SLI value of the SLO over the history window.
    attr_accessor :sli_value

    # The amount of decimal places the SLI value is accurate to for the given from `&&` to timestamp.
    attr_accessor :span_precision

    # Use `sli_value` instead.
    attr_accessor :uptime

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'error_budget_remaining' => :'error_budget_remaining',
        :'errors' => :'errors',
        :'group' => :'group',
        :'history' => :'history',
        :'monitor_modified' => :'monitor_modified',
        :'monitor_type' => :'monitor_type',
        :'name' => :'name',
        :'precision' => :'precision',
        :'preview' => :'preview',
        :'sli_value' => :'sli_value',
        :'span_precision' => :'span_precision',
        :'uptime' => :'uptime'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'error_budget_remaining' => :'Hash<String, Float>',
        :'errors' => :'Array<SLOHistoryResponseErrorWithType>',
        :'group' => :'String',
        :'history' => :'Array<Array<Float>>',
        :'monitor_modified' => :'Integer',
        :'monitor_type' => :'String',
        :'name' => :'String',
        :'precision' => :'Float',
        :'preview' => :'Boolean',
        :'sli_value' => :'Float',
        :'span_precision' => :'Float',
        :'uptime' => :'Float'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOHistoryMonitor` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOHistoryMonitor`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'error_budget_remaining')
        self.error_budget_remaining = attributes[:'error_budget_remaining']
      end

      if attributes.key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end

      if attributes.key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.key?(:'history')
        if (value = attributes[:'history']).is_a?(Array)
          self.history = value
        end
      end

      if attributes.key?(:'monitor_modified')
        self.monitor_modified = attributes[:'monitor_modified']
      end

      if attributes.key?(:'monitor_type')
        self.monitor_type = attributes[:'monitor_type']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'precision')
        self.precision = attributes[:'precision']
      end

      if attributes.key?(:'preview')
        self.preview = attributes[:'preview']
      end

      if attributes.key?(:'sli_value')
        self.sli_value = attributes[:'sli_value']
      end

      if attributes.key?(:'span_precision')
        self.span_precision = attributes[:'span_precision']
      end

      if attributes.key?(:'uptime')
        self.uptime = attributes[:'uptime']
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
          error_budget_remaining == o.error_budget_remaining &&
          errors == o.errors &&
          group == o.group &&
          history == o.history &&
          monitor_modified == o.monitor_modified &&
          monitor_type == o.monitor_type &&
          name == o.name &&
          precision == o.precision &&
          preview == o.preview &&
          sli_value == o.sli_value &&
          span_precision == o.span_precision &&
          uptime == o.uptime
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:error_budget_remaining, :errors, :group, :history, :monitor_modified, :monitor_type, :name, :precision, :preview, :sli_value, :span_precision, :uptime].hash
    end
  end
end
