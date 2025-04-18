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
  # Used for fixed span times, such as 'March 1 to March 7'.
  class WidgetNewFixedSpan
    include BaseGenericModel

    # Start time in seconds since epoch.
    attr_reader :from

    # End time in seconds since epoch.
    attr_reader :to

    # Type "fixed" denotes a fixed span.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'from' => :'from',
        :'to' => :'to',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'from' => :'Integer',
        :'to' => :'Integer',
        :'type' => :'WidgetNewFixedSpanType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::WidgetNewFixedSpan` initialize method"
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

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @from.nil?
      return false if @from < 0
      return false if @to.nil?
      return false if @to < 0
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param from [Object] Object to be assigned
    # @!visibility private
    def from=(from)
      if from.nil?
        fail ArgumentError, 'invalid value for "from", from cannot be nil.'
      end
      if from < 0
        fail ArgumentError, 'invalid value for "from", must be greater than or equal to 0.'
      end
      @from = from
    end

    # Custom attribute writer method with validation
    # @param to [Object] Object to be assigned
    # @!visibility private
    def to=(to)
      if to.nil?
        fail ArgumentError, 'invalid value for "to", to cannot be nil.'
      end
      if to < 0
        fail ArgumentError, 'invalid value for "to", must be greater than or equal to 0.'
      end
      @to = to
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
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
          from == o.from &&
          to == o.to &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [from, to, type, additional_properties].hash
    end
  end
end
