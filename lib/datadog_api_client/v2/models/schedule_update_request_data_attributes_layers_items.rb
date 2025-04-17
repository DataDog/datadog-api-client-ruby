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
  # Represents a layer within a schedule update, including rotation details, members,
  # and optional restrictions.
  class ScheduleUpdateRequestDataAttributesLayersItems
    include BaseGenericModel

    # When this updated layer takes effect (ISO 8601 format).
    attr_reader :effective_date

    # When this updated layer should stop being active (ISO 8601 format).
    attr_accessor :end_date

    # A unique identifier for the layer being updated.
    attr_accessor :id

    # Specifies how the rotation repeats: number of days, plus optional seconds, up to the given maximums.
    attr_reader :interval

    # The members assigned to this layer.
    attr_reader :members

    # The name for this layer (for example, "Secondary Coverage").
    attr_reader :name

    # Any time restrictions that define when this layer is active.
    attr_accessor :restrictions

    # The date/time at which the rotation begins (ISO 8601 format).
    attr_reader :rotation_start

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'effective_date' => :'effective_date',
        :'end_date' => :'end_date',
        :'id' => :'id',
        :'interval' => :'interval',
        :'members' => :'members',
        :'name' => :'name',
        :'restrictions' => :'restrictions',
        :'rotation_start' => :'rotation_start'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'effective_date' => :'Time',
        :'end_date' => :'Time',
        :'id' => :'String',
        :'interval' => :'ScheduleUpdateRequestDataAttributesLayersItemsInterval',
        :'members' => :'Array<ScheduleUpdateRequestDataAttributesLayersItemsMembersItems>',
        :'name' => :'String',
        :'restrictions' => :'Array<ScheduleUpdateRequestDataAttributesLayersItemsRestrictionsItems>',
        :'rotation_start' => :'Time'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ScheduleUpdateRequestDataAttributesLayersItems` initialize method"
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

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.key?(:'members')
        if (value = attributes[:'members']).is_a?(Array)
          self.members = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'restrictions')
        if (value = attributes[:'restrictions']).is_a?(Array)
          self.restrictions = value
        end
      end

      if attributes.key?(:'rotation_start')
        self.rotation_start = attributes[:'rotation_start']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @effective_date.nil?
      return false if @interval.nil?
      return false if @members.nil?
      return false if @name.nil?
      return false if @rotation_start.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param effective_date [Object] Object to be assigned
    # @!visibility private
    def effective_date=(effective_date)
      if effective_date.nil?
        fail ArgumentError, 'invalid value for "effective_date", effective_date cannot be nil.'
      end
      @effective_date = effective_date
    end

    # Custom attribute writer method with validation
    # @param interval [Object] Object to be assigned
    # @!visibility private
    def interval=(interval)
      if interval.nil?
        fail ArgumentError, 'invalid value for "interval", interval cannot be nil.'
      end
      @interval = interval
    end

    # Custom attribute writer method with validation
    # @param members [Object] Object to be assigned
    # @!visibility private
    def members=(members)
      if members.nil?
        fail ArgumentError, 'invalid value for "members", members cannot be nil.'
      end
      @members = members
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param rotation_start [Object] Object to be assigned
    # @!visibility private
    def rotation_start=(rotation_start)
      if rotation_start.nil?
        fail ArgumentError, 'invalid value for "rotation_start", rotation_start cannot be nil.'
      end
      @rotation_start = rotation_start
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
          effective_date == o.effective_date &&
          end_date == o.end_date &&
          id == o.id &&
          interval == o.interval &&
          members == o.members &&
          name == o.name &&
          restrictions == o.restrictions &&
          rotation_start == o.rotation_start &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [effective_date, end_date, id, interval, members, name, restrictions, rotation_start, additional_properties].hash
    end
  end
end
