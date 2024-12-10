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
  # Used to perform a histogram computation (only for measure facets).
  # Note: At most 100 buckets are allowed, the number of buckets is (max - min)/interval.
  class SpansGroupByHistogram
    include BaseGenericModel

    # The bin size of the histogram buckets.
    attr_reader :interval

    # The maximum value for the measure used in the histogram
    # (values greater than this one are filtered out).
    attr_reader :max

    # The minimum value for the measure used in the histogram
    # (values smaller than this one are filtered out).
    attr_reader :min

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'interval' => :'interval',
        :'max' => :'max',
        :'min' => :'min'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'interval' => :'Float',
        :'max' => :'Float',
        :'min' => :'Float'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SpansGroupByHistogram` initialize method"
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

      if attributes.key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.key?(:'max')
        self.max = attributes[:'max']
      end

      if attributes.key?(:'min')
        self.min = attributes[:'min']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @interval.nil?
      return false if @max.nil?
      return false if @min.nil?
      true
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
    # @param max [Object] Object to be assigned
    # @!visibility private
    def max=(max)
      if max.nil?
        fail ArgumentError, 'invalid value for "max", max cannot be nil.'
      end
      @max = max
    end

    # Custom attribute writer method with validation
    # @param min [Object] Object to be assigned
    # @!visibility private
    def min=(min)
      if min.nil?
        fail ArgumentError, 'invalid value for "min", min cannot be nil.'
      end
      @min = min
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
          interval == o.interval &&
          max == o.max &&
          min == o.min &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [interval, max, min, additional_properties].hash
    end
  end
end
