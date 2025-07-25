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
  # Dataset object.
  # 
  # ### Datasets Constraints
  # - **Tag Limit per Dataset**:
  #   - Each restricted dataset supports a maximum of 10 key:value pairs per product.
  # 
  # - **Tag Key Rules per Telemetry Type**:
  #   - Only one tag key or attribute may be used to define access within a single telemetry type.
  #   - The same or different tag key may be used across different telemetry types.
  # 
  # - **Tag Value Uniqueness**:
  #   - Tag values must be unique within a single dataset.
  #   - A tag value used in one dataset cannot be reused in another dataset of the same telemetry type.
  class Dataset
    include BaseGenericModel

    # Dataset metadata and configuration(s).
    attr_reader :attributes

    # Unique identifier for the dataset.
    attr_accessor :id

    # Resource type, always "dataset".
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'attributes' => :'attributes',
        :'id' => :'id',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'attributes' => :'DatasetAttributes',
        :'id' => :'String',
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::Dataset` initialize method"
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

      if attributes.key?(:'attributes')
        self.attributes = attributes[:'attributes']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @attributes.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param attributes [Object] Object to be assigned
    # @!visibility private
    def attributes=(attributes)
      if attributes.nil?
        fail ArgumentError, 'invalid value for "attributes", attributes cannot be nil.'
      end
      @attributes = attributes
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
          attributes == o.attributes &&
          id == o.id &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [attributes, id, type, additional_properties].hash
    end
  end
end
