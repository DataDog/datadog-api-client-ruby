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
  # The split graph list contains a graph for each value of the split dimension.
  class SplitVectorEntryItem
    include BaseGenericModel

    # The tag key.
    attr_reader :tag_key

    # The tag values.
    attr_reader :tag_values

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'tag_key' => :'tag_key',
        :'tag_values' => :'tag_values'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'tag_key' => :'String',
        :'tag_values' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SplitVectorEntryItem` initialize method"
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

      if attributes.key?(:'tag_key')
        self.tag_key = attributes[:'tag_key']
      end

      if attributes.key?(:'tag_values')
        if (value = attributes[:'tag_values']).is_a?(Array)
          self.tag_values = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @tag_key.nil?
      return false if @tag_key.to_s.length < 1
      return false if @tag_values.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param tag_key [Object] Object to be assigned
    # @!visibility private
    def tag_key=(tag_key)
      if tag_key.nil?
        fail ArgumentError, 'invalid value for "tag_key", tag_key cannot be nil.'
      end
      if tag_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "tag_key", the character length must be great than or equal to 1.'
      end
      @tag_key = tag_key
    end

    # Custom attribute writer method with validation
    # @param tag_values [Object] Object to be assigned
    # @!visibility private
    def tag_values=(tag_values)
      if tag_values.nil?
        fail ArgumentError, 'invalid value for "tag_values", tag_values cannot be nil.'
      end
      @tag_values = tag_values
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tag_key == o.tag_key &&
          tag_values == o.tag_values
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [tag_key, tag_values].hash
    end
  end
end
