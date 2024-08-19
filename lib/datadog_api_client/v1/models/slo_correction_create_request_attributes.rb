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
  # The attribute object associated with the SLO correction to be created.
  class SLOCorrectionCreateRequestAttributes
    include BaseGenericModel

    # Category the SLO correction belongs to.
    attr_reader :category

    # Description of the correction being made.
    attr_accessor :description

    # Length of time (in seconds) for a specified `rrule` recurring SLO correction.
    attr_accessor :duration

    # Ending time of the correction in epoch seconds.
    attr_accessor :_end

    # The recurrence rules as defined in the iCalendar RFC 5545. The supported rules for SLO corrections
    # are `FREQ`, `INTERVAL`, `COUNT`, `UNTIL` and `BYDAY`.
    attr_accessor :rrule

    # ID of the SLO that this correction applies to.
    attr_reader :slo_id

    # Starting time of the correction in epoch seconds.
    attr_reader :start

    # The timezone to display in the UI for the correction times (defaults to "UTC").
    attr_accessor :timezone

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'category' => :'category',
        :'description' => :'description',
        :'duration' => :'duration',
        :'_end' => :'end',
        :'rrule' => :'rrule',
        :'slo_id' => :'slo_id',
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
        :'slo_id' => :'String',
        :'start' => :'Integer',
        :'timezone' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOCorrectionCreateRequestAttributes` initialize method"
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

      if attributes.key?(:'slo_id')
        self.slo_id = attributes[:'slo_id']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @category.nil?
      return false if @slo_id.nil?
      return false if @start.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param category [Object] Object to be assigned
    # @!visibility private
    def category=(category)
      if category.nil?
        fail ArgumentError, 'invalid value for "category", category cannot be nil.'
      end
      @category = category
    end

    # Custom attribute writer method with validation
    # @param slo_id [Object] Object to be assigned
    # @!visibility private
    def slo_id=(slo_id)
      if slo_id.nil?
        fail ArgumentError, 'invalid value for "slo_id", slo_id cannot be nil.'
      end
      @slo_id = slo_id
    end

    # Custom attribute writer method with validation
    # @param start [Object] Object to be assigned
    # @!visibility private
    def start=(start)
      if start.nil?
        fail ArgumentError, 'invalid value for "start", start cannot be nil.'
      end
      @start = start
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
          category == o.category &&
          description == o.description &&
          duration == o.duration &&
          _end == o._end &&
          rrule == o.rrule &&
          slo_id == o.slo_id &&
          start == o.start &&
          timezone == o.timezone
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [category, description, duration, _end, rrule, slo_id, start, timezone].hash
    end
  end
end
