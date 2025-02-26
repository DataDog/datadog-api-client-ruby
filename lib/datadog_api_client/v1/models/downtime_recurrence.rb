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
  # An object defining the recurrence of the downtime.
  class DowntimeRecurrence
    include BaseGenericModel

    # How often to repeat as an integer.
    # For example, to repeat every 3 days, select a type of `days` and a period of `3`.
    attr_reader :period

    # The `RRULE` standard for defining recurring events (**requires to set "type" to rrule**)
    # For example, to have a recurring event on the first day of each month, set the type to `rrule` and set the `FREQ` to `MONTHLY` and `BYMONTHDAY` to `1`.
    # Most common `rrule` options from the [iCalendar Spec](https://tools.ietf.org/html/rfc5545) are supported.
    #
    # **Note**: Attributes specifying the duration in `RRULE` are not supported (for example, `DTSTART`, `DTEND`, `DURATION`).
    # More examples available in this [downtime guide](https://docs.datadoghq.com/monitors/guide/suppress-alert-with-downtimes/?tab=api)
    attr_accessor :rrule

    # The type of recurrence. Choose from `days`, `weeks`, `months`, `years`, `rrule`.
    attr_accessor :type

    # The date at which the recurrence should end as a POSIX timestamp.
    # `until_occurences` and `until_date` are mutually exclusive.
    attr_accessor :until_date

    # How many times the downtime is rescheduled.
    # `until_occurences` and `until_date` are mutually exclusive.
    attr_reader :until_occurrences

    # A list of week days to repeat on. Choose from `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat` or `Sun`.
    # Only applicable when type is weeks. First letter must be capitalized.
    attr_accessor :week_days

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'period' => :'period',
        :'rrule' => :'rrule',
        :'type' => :'type',
        :'until_date' => :'until_date',
        :'until_occurrences' => :'until_occurrences',
        :'week_days' => :'week_days'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'period' => :'Integer',
        :'rrule' => :'String',
        :'type' => :'String',
        :'until_date' => :'Integer',
        :'until_occurrences' => :'Integer',
        :'week_days' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'until_date',
        :'until_occurrences',
        :'week_days',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::DowntimeRecurrence` initialize method"
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

      if attributes.key?(:'period')
        self.period = attributes[:'period']
      end

      if attributes.key?(:'rrule')
        self.rrule = attributes[:'rrule']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'until_date')
        self.until_date = attributes[:'until_date']
      end

      if attributes.key?(:'until_occurrences')
        self.until_occurrences = attributes[:'until_occurrences']
      end

      if attributes.key?(:'week_days')
        if (value = attributes[:'week_days']).is_a?(Array)
          self.week_days = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@period.nil? && @period > 2147483647
      return false if !@until_occurrences.nil? && @until_occurrences > 2147483647
      true
    end

    # Custom attribute writer method with validation
    # @param period [Object] Object to be assigned
    # @!visibility private
    def period=(period)
      if !period.nil? && period > 2147483647
        fail ArgumentError, 'invalid value for "period", must be smaller than or equal to 2147483647.'
      end
      @period = period
    end

    # Custom attribute writer method with validation
    # @param until_occurrences [Object] Object to be assigned
    # @!visibility private
    def until_occurrences=(until_occurrences)
      if !until_occurrences.nil? && until_occurrences > 2147483647
        fail ArgumentError, 'invalid value for "until_occurrences", must be smaller than or equal to 2147483647.'
      end
      @until_occurrences = until_occurrences
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
          period == o.period &&
          rrule == o.rrule &&
          type == o.type &&
          until_date == o.until_date &&
          until_occurrences == o.until_occurrences &&
          week_days == o.week_days &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [period, rrule, type, until_date, until_occurrences, week_days, additional_properties].hash
    end
  end
end
