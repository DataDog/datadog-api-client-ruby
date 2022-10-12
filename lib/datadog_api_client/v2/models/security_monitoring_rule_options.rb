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
  # Options on rules.
  class SecurityMonitoringRuleOptions
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # If true, signals in non-production environments have a lower severity than what is defined by the rule case, which can reduce signal noise.
    # The severity is decreased by one level: `CRITICAL` in production becomes `HIGH` in non-production, `HIGH` becomes `MEDIUM` and so on. `INFO` remains `INFO`.
    # The decrement is applied when the environment tag of the signal starts with `staging`, `test` or `dev`.
    attr_accessor :decrease_criticality_based_on_env

    # The detection method.
    attr_accessor :detection_method

    # A time window is specified to match when at least one of the cases matches true. This is a sliding window
    # and evaluates in real time.
    attr_accessor :evaluation_window

    # Hardcoded evaluator type.
    attr_accessor :hardcoded_evaluator_type

    # Options on impossible travel rules.
    attr_accessor :impossible_travel_options

    # Once a signal is generated, the signal will remain “open” if a case is matched at least once within
    # this keep alive window.
    attr_accessor :keep_alive

    # A signal will “close” regardless of the query being matched once the time exceeds the maximum duration.
    # This time is calculated from the first seen timestamp.
    attr_accessor :max_signal_duration

    # Options on new value rules.
    attr_accessor :new_value_options

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'decrease_criticality_based_on_env' => :'decreaseCriticalityBasedOnEnv',
        :'detection_method' => :'detectionMethod',
        :'evaluation_window' => :'evaluationWindow',
        :'hardcoded_evaluator_type' => :'hardcodedEvaluatorType',
        :'impossible_travel_options' => :'impossibleTravelOptions',
        :'keep_alive' => :'keepAlive',
        :'max_signal_duration' => :'maxSignalDuration',
        :'new_value_options' => :'newValueOptions'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'decrease_criticality_based_on_env' => :'Boolean',
        :'detection_method' => :'SecurityMonitoringRuleDetectionMethod',
        :'evaluation_window' => :'SecurityMonitoringRuleEvaluationWindow',
        :'hardcoded_evaluator_type' => :'SecurityMonitoringRuleHardcodedEvaluatorType',
        :'impossible_travel_options' => :'SecurityMonitoringRuleImpossibleTravelOptions',
        :'keep_alive' => :'SecurityMonitoringRuleKeepAlive',
        :'max_signal_duration' => :'SecurityMonitoringRuleMaxSignalDuration',
        :'new_value_options' => :'SecurityMonitoringRuleNewValueOptions'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringRuleOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SecurityMonitoringRuleOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'decrease_criticality_based_on_env')
        self.decrease_criticality_based_on_env = attributes[:'decrease_criticality_based_on_env']
      end

      if attributes.key?(:'detection_method')
        self.detection_method = attributes[:'detection_method']
      end

      if attributes.key?(:'evaluation_window')
        self.evaluation_window = attributes[:'evaluation_window']
      end

      if attributes.key?(:'hardcoded_evaluator_type')
        self.hardcoded_evaluator_type = attributes[:'hardcoded_evaluator_type']
      end

      if attributes.key?(:'impossible_travel_options')
        self.impossible_travel_options = attributes[:'impossible_travel_options']
      end

      if attributes.key?(:'keep_alive')
        self.keep_alive = attributes[:'keep_alive']
      end

      if attributes.key?(:'max_signal_duration')
        self.max_signal_duration = attributes[:'max_signal_duration']
      end

      if attributes.key?(:'new_value_options')
        self.new_value_options = attributes[:'new_value_options']
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
          decrease_criticality_based_on_env == o.decrease_criticality_based_on_env &&
          detection_method == o.detection_method &&
          evaluation_window == o.evaluation_window &&
          hardcoded_evaluator_type == o.hardcoded_evaluator_type &&
          impossible_travel_options == o.impossible_travel_options &&
          keep_alive == o.keep_alive &&
          max_signal_duration == o.max_signal_duration &&
          new_value_options == o.new_value_options
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [decrease_criticality_based_on_env, detection_method, evaluation_window, hardcoded_evaluator_type, impossible_travel_options, keep_alive, max_signal_duration, new_value_options].hash
    end
  end
end
