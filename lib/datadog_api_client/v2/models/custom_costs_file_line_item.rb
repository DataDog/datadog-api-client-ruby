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
  # Line item details from a Custom Costs file.
  class CustomCostsFileLineItem
    include BaseGenericModel

    # Total cost in the cost file.
    attr_accessor :billed_cost

    # Currency used in the Custom Costs file.
    attr_accessor :billing_currency

    # Description for the line item cost.
    attr_accessor :charge_description

    # End date of the usage charge.
    attr_reader :charge_period_end

    # Start date of the usage charge.
    attr_reader :charge_period_start

    # Name of the provider for the line item.
    attr_accessor :provider_name

    # Additional tags for the line item.
    attr_accessor :tags

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'billed_cost' => :'BilledCost',
        :'billing_currency' => :'BillingCurrency',
        :'charge_description' => :'ChargeDescription',
        :'charge_period_end' => :'ChargePeriodEnd',
        :'charge_period_start' => :'ChargePeriodStart',
        :'provider_name' => :'ProviderName',
        :'tags' => :'Tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'billed_cost' => :'Float',
        :'billing_currency' => :'String',
        :'charge_description' => :'String',
        :'charge_period_end' => :'String',
        :'charge_period_start' => :'String',
        :'provider_name' => :'String',
        :'tags' => :'Hash<String, String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CustomCostsFileLineItem` initialize method"
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

      if attributes.key?(:'billed_cost')
        self.billed_cost = attributes[:'billed_cost']
      end

      if attributes.key?(:'billing_currency')
        self.billing_currency = attributes[:'billing_currency']
      end

      if attributes.key?(:'charge_description')
        self.charge_description = attributes[:'charge_description']
      end

      if attributes.key?(:'charge_period_end')
        self.charge_period_end = attributes[:'charge_period_end']
      end

      if attributes.key?(:'charge_period_start')
        self.charge_period_start = attributes[:'charge_period_start']
      end

      if attributes.key?(:'provider_name')
        self.provider_name = attributes[:'provider_name']
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      pattern = Regexp.new(/^\d{4}-\d{2}-\d{2}$/)
      return false if !@charge_period_end.nil? && @charge_period_end !~ pattern
      pattern = Regexp.new(/^\d{4}-\d{2}-\d{2}$/)
      return false if !@charge_period_start.nil? && @charge_period_start !~ pattern
      true
    end

    # Custom attribute writer method with validation
    # @param charge_period_end [Object] Object to be assigned
    # @!visibility private
    def charge_period_end=(charge_period_end)
      pattern = Regexp.new(/^\d{4}-\d{2}-\d{2}$/)
      if !charge_period_end.nil? && charge_period_end !~ pattern
        fail ArgumentError, "invalid value for \"charge_period_end\", must conform to the pattern #{pattern}."
      end
      @charge_period_end = charge_period_end
    end

    # Custom attribute writer method with validation
    # @param charge_period_start [Object] Object to be assigned
    # @!visibility private
    def charge_period_start=(charge_period_start)
      pattern = Regexp.new(/^\d{4}-\d{2}-\d{2}$/)
      if !charge_period_start.nil? && charge_period_start !~ pattern
        fail ArgumentError, "invalid value for \"charge_period_start\", must conform to the pattern #{pattern}."
      end
      @charge_period_start = charge_period_start
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
          billed_cost == o.billed_cost &&
          billing_currency == o.billing_currency &&
          charge_description == o.charge_description &&
          charge_period_end == o.charge_period_end &&
          charge_period_start == o.charge_period_start &&
          provider_name == o.provider_name &&
          tags == o.tags
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [billed_cost, billing_currency, charge_description, charge_period_end, charge_period_start, provider_name, tags].hash
    end
  end
end