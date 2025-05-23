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
  # An object defining the recurrence of the downtime.
  class DowntimeScheduleRecurrenceCreateUpdateRequest
    include BaseGenericModel

    # The length of the downtime. Must begin with an integer and end with one of 'm', 'h', d', or 'w'.
    attr_reader :duration

    # The `RRULE` standard for defining recurring events.
    # For example, to have a recurring event on the first day of each month, set the type to `rrule` and set the `FREQ` to `MONTHLY` and `BYMONTHDAY` to `1`.
    # Most common `rrule` options from the [iCalendar Spec](https://tools.ietf.org/html/rfc5545) are supported.
    #
    # **Note**: Attributes specifying the duration in `RRULE` are not supported (for example, `DTSTART`, `DTEND`, `DURATION`).
    # More examples available in this [downtime guide](https://docs.datadoghq.com/monitors/guide/suppress-alert-with-downtimes/?tab=api).
    attr_reader :rrule

    # ISO-8601 Datetime to start the downtime. Must not include a UTC offset. If not provided, the
    # downtime starts the moment it is created.
    attr_accessor :start

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'duration' => :'duration',
        :'rrule' => :'rrule',
        :'start' => :'start'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'duration' => :'String',
        :'rrule' => :'String',
        :'start' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'start',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::DowntimeScheduleRecurrenceCreateUpdateRequest` initialize method"
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

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'rrule')
        self.rrule = attributes[:'rrule']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @duration.nil?
      return false if @rrule.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param duration [Object] Object to be assigned
    # @!visibility private
    def duration=(duration)
      if duration.nil?
        fail ArgumentError, 'invalid value for "duration", duration cannot be nil.'
      end
      @duration = duration
    end

    # Custom attribute writer method with validation
    # @param rrule [Object] Object to be assigned
    # @!visibility private
    def rrule=(rrule)
      if rrule.nil?
        fail ArgumentError, 'invalid value for "rrule", rrule cannot be nil.'
      end
      @rrule = rrule
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
          duration == o.duration &&
          rrule == o.rrule &&
          start == o.start &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [duration, rrule, start, additional_properties].hash
    end
  end
end
