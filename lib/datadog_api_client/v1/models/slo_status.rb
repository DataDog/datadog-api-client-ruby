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
  # Status of the SLO's primary timeframe.
  class SLOStatus
    include BaseGenericModel

    # Error message if SLO status or error budget could not be calculated.
    attr_accessor :calculation_error

    # Remaining error budget of the SLO in percentage.
    attr_accessor :error_budget_remaining

    # timestamp (UNIX time in seconds) of when the SLO status and error budget
    # were calculated.
    attr_accessor :indexed_at

    # Error budget remaining for an SLO.
    attr_accessor :raw_error_budget_remaining

    # The current service level indicator (SLI) of the SLO, also known as 'status'. This is a percentage value from 0-100 (inclusive).
    attr_accessor :sli

    # The number of decimal places the SLI value is accurate to.
    attr_accessor :span_precision

    # State of the SLO.
    attr_accessor :state

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'calculation_error' => :'calculation_error',
        :'error_budget_remaining' => :'error_budget_remaining',
        :'indexed_at' => :'indexed_at',
        :'raw_error_budget_remaining' => :'raw_error_budget_remaining',
        :'sli' => :'sli',
        :'span_precision' => :'span_precision',
        :'state' => :'state'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'calculation_error' => :'String',
        :'error_budget_remaining' => :'Float',
        :'indexed_at' => :'Integer',
        :'raw_error_budget_remaining' => :'SLORawErrorBudgetRemaining',
        :'sli' => :'Float',
        :'span_precision' => :'Integer',
        :'state' => :'SLOState'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'calculation_error',
        :'error_budget_remaining',
        :'raw_error_budget_remaining',
        :'sli',
        :'span_precision',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOStatus` initialize method"
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

      if attributes.key?(:'calculation_error')
        self.calculation_error = attributes[:'calculation_error']
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

      if attributes.key?(:'sli')
        self.sli = attributes[:'sli']
      end

      if attributes.key?(:'span_precision')
        self.span_precision = attributes[:'span_precision']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
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
          calculation_error == o.calculation_error &&
          error_budget_remaining == o.error_budget_remaining &&
          indexed_at == o.indexed_at &&
          raw_error_budget_remaining == o.raw_error_budget_remaining &&
          sli == o.sli &&
          span_precision == o.span_precision &&
          state == o.state &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [calculation_error, error_budget_remaining, indexed_at, raw_error_budget_remaining, sli, span_precision, state, additional_properties].hash
    end
  end
end
