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
  # Vulnerability counts associated with the Container Image.
  class ContainerImageVulnerabilities
    include BaseGenericModel

    # ID of the Container Image.
    attr_accessor :asset_id

    # Number of vulnerabilities with CVSS Critical severity.
    attr_accessor :critical

    # Number of vulnerabilities with CVSS High severity.
    attr_accessor :high

    # Number of vulnerabilities with CVSS Low severity.
    attr_accessor :low

    # Number of vulnerabilities with CVSS Medium severity.
    attr_accessor :medium

    # Number of vulnerabilities with CVSS None severity.
    attr_accessor :none

    # Number of vulnerabilities with an unknown CVSS severity.
    attr_accessor :unknown

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'asset_id' => :'asset_id',
        :'critical' => :'critical',
        :'high' => :'high',
        :'low' => :'low',
        :'medium' => :'medium',
        :'none' => :'none',
        :'unknown' => :'unknown'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'asset_id' => :'String',
        :'critical' => :'Integer',
        :'high' => :'Integer',
        :'low' => :'Integer',
        :'medium' => :'Integer',
        :'none' => :'Integer',
        :'unknown' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ContainerImageVulnerabilities` initialize method"
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

      if attributes.key?(:'asset_id')
        self.asset_id = attributes[:'asset_id']
      end

      if attributes.key?(:'critical')
        self.critical = attributes[:'critical']
      end

      if attributes.key?(:'high')
        self.high = attributes[:'high']
      end

      if attributes.key?(:'low')
        self.low = attributes[:'low']
      end

      if attributes.key?(:'medium')
        self.medium = attributes[:'medium']
      end

      if attributes.key?(:'none')
        self.none = attributes[:'none']
      end

      if attributes.key?(:'unknown')
        self.unknown = attributes[:'unknown']
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
          asset_id == o.asset_id &&
          critical == o.critical &&
          high == o.high &&
          low == o.low &&
          medium == o.medium &&
          none == o.none &&
          unknown == o.unknown &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [asset_id, critical, high, low, medium, none, unknown, additional_properties].hash
    end
  end
end
