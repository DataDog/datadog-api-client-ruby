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
  # The attribute object associated with the SLO correction to be updated.
  class SLOCorrectionUpdateRequestAttributes
    include BaseGenericModel

    # Category the SLO correction belongs to.
    attr_accessor :category

    # Description of the correction being made.
    attr_accessor :description

    # Length of time (in seconds) for a specified `rrule` recurring SLO correction.
    attr_accessor :duration

    # Ending time of the correction in epoch seconds.
    attr_accessor :_end

    # The recurrence rules as defined in the iCalendar RFC 5545. The supported rules for SLO corrections
    # are `FREQ`, `INTERVAL`, `COUNT`, and `UNTIL`.
    attr_accessor :rrule

    # Starting time of the correction in epoch seconds.
    attr_accessor :start

    # The timezone to display in the UI for the correction times (defaults to "UTC").
    attr_accessor :timezone

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'category' => :'category',
        :'description' => :'description',
        :'duration' => :'duration',
        :'_end' => :'end',
        :'rrule' => :'rrule',
        :'start' => :'start',
        :'timezone' => :'timezone'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'category' => :'SLOCorrectionCategory',
        :'description' => :'String',
        :'duration' => :'Integer',
        :'_end' => :'Integer',
        :'rrule' => :'String',
        :'start' => :'Integer',
        :'timezone' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOCorrectionUpdateRequestAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOCorrectionUpdateRequestAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'_end')
        self._end = attributes[:'_end']
      end

      if attributes.key?(:'rrule')
        self.rrule = attributes[:'rrule']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          category == o.category &&
          description == o.description &&
          duration == o.duration &&
          _end == o._end &&
          rrule == o.rrule &&
          start == o.start &&
          timezone == o.timezone
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [category, description, duration, _end, rrule, start, timezone].hash
    end
  end
end
