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
  # Container Image breakdown by supported platform.
  class ContainerImageFlavor
    include BaseGenericModel

    # Time the platform-specific Container Image was built.
    attr_accessor :built_at

    # Operating System architecture supported by the Container Image.
    attr_accessor :os_architecture

    # Operating System name supported by the Container Image.
    attr_accessor :os_name

    # Operating System version supported by the Container Image.
    attr_accessor :os_version

    # Size of the platform-specific Container Image.
    attr_accessor :size

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'built_at' => :'built_at',
        :'os_architecture' => :'os_architecture',
        :'os_name' => :'os_name',
        :'os_version' => :'os_version',
        :'size' => :'size'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'built_at' => :'String',
        :'os_architecture' => :'String',
        :'os_name' => :'String',
        :'os_version' => :'String',
        :'size' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ContainerImageFlavor` initialize method"
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

      if attributes.key?(:'built_at')
        self.built_at = attributes[:'built_at']
      end

      if attributes.key?(:'os_architecture')
        self.os_architecture = attributes[:'os_architecture']
      end

      if attributes.key?(:'os_name')
        self.os_name = attributes[:'os_name']
      end

      if attributes.key?(:'os_version')
        self.os_version = attributes[:'os_version']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end
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
          built_at == o.built_at &&
          os_architecture == o.os_architecture &&
          os_name == o.os_name &&
          os_version == o.os_version &&
          size == o.size &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [built_at, os_architecture, os_name, os_version, size, additional_properties].hash
    end
  end
end
