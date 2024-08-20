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
  # The object describing the configuration of the retention filter to create/update.
  class RetentionFilterUpdateAttributes
    include BaseGenericModel

    # Enable/Disable the retention filter.
    attr_reader :enabled

    # The spans filter. Spans matching this filter will be indexed and stored.
    attr_reader :filter

    # The type of retention filter.
    attr_reader :filter_type

    # The name of the retention filter.
    attr_reader :name

    # Sample rate to apply to spans going through this retention filter,
    # a value of 1.0 keeps all spans matching the query.
    attr_reader :rate

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'enabled' => :'enabled',
        :'filter' => :'filter',
        :'filter_type' => :'filter_type',
        :'name' => :'name',
        :'rate' => :'rate'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'enabled' => :'Boolean',
        :'filter' => :'SpansFilterCreate',
        :'filter_type' => :'RetentionFilterAllType',
        :'name' => :'String',
        :'rate' => :'Float'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::RetentionFilterUpdateAttributes` initialize method"
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

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'filter_type')
        self.filter_type = attributes[:'filter_type']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'rate')
        self.rate = attributes[:'rate']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @enabled.nil?
      return false if @filter.nil?
      return false if @filter_type.nil?
      return false if @name.nil?
      return false if @rate.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param enabled [Object] Object to be assigned
    # @!visibility private
    def enabled=(enabled)
      if enabled.nil?
        fail ArgumentError, 'invalid value for "enabled", enabled cannot be nil.'
      end
      @enabled = enabled
    end

    # Custom attribute writer method with validation
    # @param filter [Object] Object to be assigned
    # @!visibility private
    def filter=(filter)
      if filter.nil?
        fail ArgumentError, 'invalid value for "filter", filter cannot be nil.'
      end
      @filter = filter
    end

    # Custom attribute writer method with validation
    # @param filter_type [Object] Object to be assigned
    # @!visibility private
    def filter_type=(filter_type)
      if filter_type.nil?
        fail ArgumentError, 'invalid value for "filter_type", filter_type cannot be nil.'
      end
      @filter_type = filter_type
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
    # @param rate [Object] Object to be assigned
    # @!visibility private
    def rate=(rate)
      if rate.nil?
        fail ArgumentError, 'invalid value for "rate", rate cannot be nil.'
      end
      @rate = rate
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
          enabled == o.enabled &&
          filter == o.filter &&
          filter_type == o.filter_type &&
          name == o.name &&
          rate == o.rate
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [enabled, filter, filter_type, name, rate].hash
    end
  end
end
