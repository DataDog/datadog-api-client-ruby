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
  # Overall status of the SLO by timeframes.
  class SLOOverallStatuses
    include BaseGenericModel

    # Error message if SLO status or error budget could not be calculated.
    attr_accessor :error

    # Remaining error budget of the SLO in percentage.
    attr_accessor :error_budget_remaining

    # timestamp (UNIX time in seconds) of when the SLO status and error budget
    # were calculated.
    attr_accessor :indexed_at

    # Error budget remaining for an SLO.
    attr_accessor :raw_error_budget_remaining

    # The amount of decimal places the SLI value is accurate to.
    attr_accessor :span_precision

    # State of the SLO.
    attr_accessor :state

    # The status of the SLO.
    attr_accessor :status

    # The target of the SLO.
    attr_accessor :target

    # The SLO time window options. Note that "custom" is not a valid option for creating
    # or updating SLOs. It is only used when querying SLO history over custom timeframes.
    attr_accessor :timeframe

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'error' => :'error',
        :'error_budget_remaining' => :'error_budget_remaining',
        :'indexed_at' => :'indexed_at',
        :'raw_error_budget_remaining' => :'raw_error_budget_remaining',
        :'span_precision' => :'span_precision',
        :'state' => :'state',
        :'status' => :'status',
        :'target' => :'target',
        :'timeframe' => :'timeframe'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'error' => :'String',
        :'error_budget_remaining' => :'Float',
        :'indexed_at' => :'Integer',
        :'raw_error_budget_remaining' => :'SLORawErrorBudgetRemaining',
        :'span_precision' => :'Integer',
        :'state' => :'SLOState',
        :'status' => :'Float',
        :'target' => :'Float',
        :'timeframe' => :'SLOTimeframe'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'error',
        :'error_budget_remaining',
        :'raw_error_budget_remaining',
        :'span_precision',
        :'status',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOOverallStatuses` initialize method"
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

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.key?(:'error_budget_remaining')
        self.error_budget_remaining = attributes[:'error_budget_remaining']
      end

      if attributes.key?(:'indexed_at')
        self.indexed_at = attributes[:'indexed_at']
      end

      if attributes.key?(:'raw_error_budget_remaining')
        self.raw_error_budget_remaining = attributes[:'raw_error_budget_remaining']
      end

      if attributes.key?(:'span_precision')
        self.span_precision = attributes[:'span_precision']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.key?(:'timeframe')
        self.timeframe = attributes[:'timeframe']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          error == o.error &&
          error_budget_remaining == o.error_budget_remaining &&
          indexed_at == o.indexed_at &&
          raw_error_budget_remaining == o.raw_error_budget_remaining &&
          span_precision == o.span_precision &&
          state == o.state &&
          status == o.status &&
          target == o.target &&
          timeframe == o.timeframe
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [error, error_budget_remaining, indexed_at, raw_error_budget_remaining, span_precision, state, status, target, timeframe].hash
    end
  end
end
