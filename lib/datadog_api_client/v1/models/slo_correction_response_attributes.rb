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
  # The attribute object associated with the SLO correction.
  class SLOCorrectionResponseAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Category the SLO correction belongs to.
    attr_accessor :category

    # The epoch timestamp of when the correction was created at.
    attr_accessor :created_at

    # Object describing the creator of the shared element.
    attr_accessor :creator

    # Description of the correction being made.
    attr_accessor :description

    # Length of time (in seconds) for a specified `rrule` recurring SLO correction.
    attr_accessor :duration

    # Ending time of the correction in epoch seconds.
    attr_accessor :_end

    # The epoch timestamp of when the correction was modified at.
    attr_accessor :modified_at

    # Modifier of the object.
    attr_accessor :modifier

    # The recurrence rules as defined in the iCalendar RFC 5545. The supported rules for SLO corrections
    # are `FREQ`, `INTERVAL`, `COUNT`, and `UNTIL`.
    attr_accessor :rrule

    # ID of the SLO that this correction applies to.
    attr_accessor :slo_id

    # Starting time of the correction in epoch seconds.
    attr_accessor :start

    # The timezone to display in the UI for the correction times (defaults to "UTC").
    attr_accessor :timezone

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'category' => :'category',
        :'created_at' => :'created_at',
        :'creator' => :'creator',
        :'description' => :'description',
        :'duration' => :'duration',
        :'_end' => :'end',
        :'modified_at' => :'modified_at',
        :'modifier' => :'modifier',
        :'rrule' => :'rrule',
        :'slo_id' => :'slo_id',
        :'start' => :'start',
        :'timezone' => :'timezone'
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
        :'category' => :'SLOCorrectionCategory',
        :'created_at' => :'Integer',
        :'creator' => :'Creator',
        :'description' => :'String',
        :'duration' => :'Integer',
        :'_end' => :'Integer',
        :'modified_at' => :'Integer',
        :'modifier' => :'SLOCorrectionResponseAttributesModifier',
        :'rrule' => :'String',
        :'slo_id' => :'String',
        :'start' => :'Integer',
        :'timezone' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'duration',
        :'modifier',
        :'rrule',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOCorrectionResponseAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOCorrectionResponseAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
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

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'modifier')
        self.modifier = attributes[:'modifier']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          category == o.category &&
          created_at == o.created_at &&
          creator == o.creator &&
          description == o.description &&
          duration == o.duration &&
          _end == o._end &&
          modified_at == o.modified_at &&
          modifier == o.modifier &&
          rrule == o.rrule &&
          slo_id == o.slo_id &&
          start == o.start &&
          timezone == o.timezone
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
      [category, created_at, creator, description, duration, _end, modified_at, modifier, rrule, slo_id, start, timezone].hash
    end
  end
end
