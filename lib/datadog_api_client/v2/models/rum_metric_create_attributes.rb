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
  # The object describing the Datadog rum-based metric to create.
  class RumMetricCreateAttributes
    include BaseGenericModel

    # The compute rule to compute the rum-based metric.
    attr_reader :compute

    # The type of RUM events to filter on.
    attr_reader :event_type

    # The rum-based metric filter. Events matching this filter will be aggregated in this metric.
    attr_accessor :filter

    # The rules for the group by.
    attr_accessor :group_by

    # The rule to count updatable events. Is only set if "event_type" is "sessions" or "views".
    attr_accessor :uniqueness

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'compute' => :'compute',
        :'event_type' => :'event_type',
        :'filter' => :'filter',
        :'group_by' => :'group_by',
        :'uniqueness' => :'uniqueness'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'compute' => :'RumMetricCompute',
        :'event_type' => :'RumMetricEventType',
        :'filter' => :'RumMetricFilter',
        :'group_by' => :'Array<RumMetricGroupBy>',
        :'uniqueness' => :'RumMetricUniqueness'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::RumMetricCreateAttributes` initialize method"
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

      if attributes.key?(:'compute')
        self.compute = attributes[:'compute']
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'group_by')
        if (value = attributes[:'group_by']).is_a?(Array)
          self.group_by = value
        end
      end

      if attributes.key?(:'uniqueness')
        self.uniqueness = attributes[:'uniqueness']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @compute.nil?
      return false if @event_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param compute [Object] Object to be assigned
    # @!visibility private
    def compute=(compute)
      if compute.nil?
        fail ArgumentError, 'invalid value for "compute", compute cannot be nil.'
      end
      @compute = compute
    end

    # Custom attribute writer method with validation
    # @param event_type [Object] Object to be assigned
    # @!visibility private
    def event_type=(event_type)
      if event_type.nil?
        fail ArgumentError, 'invalid value for "event_type", event_type cannot be nil.'
      end
      @event_type = event_type
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
          compute == o.compute &&
          event_type == o.event_type &&
          filter == o.filter &&
          group_by == o.group_by &&
          uniqueness == o.uniqueness
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [compute, event_type, filter, group_by, uniqueness].hash
    end
  end
end
