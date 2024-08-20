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
  # The interface attributes
  class InterfaceAttributes
    include BaseGenericModel

    # The interface alias
    attr_accessor :_alias

    # The interface description
    attr_accessor :description

    # The interface index
    attr_accessor :index

    # The interface MAC address
    attr_accessor :mac_address

    # The interface name
    attr_accessor :name

    # The interface status
    attr_accessor :status

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'_alias' => :'alias',
        :'description' => :'description',
        :'index' => :'index',
        :'mac_address' => :'mac_address',
        :'name' => :'name',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'_alias' => :'String',
        :'description' => :'String',
        :'index' => :'Integer',
        :'mac_address' => :'String',
        :'name' => :'String',
        :'status' => :'InterfaceAttributesStatus'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::InterfaceAttributes` initialize method"
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

      if attributes.key?(:'_alias')
        self._alias = attributes[:'_alias']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'index')
        self.index = attributes[:'index']
      end

      if attributes.key?(:'mac_address')
        self.mac_address = attributes[:'mac_address']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _alias == o._alias &&
          description == o.description &&
          index == o.index &&
          mac_address == o.mac_address &&
          name == o.name &&
          status == o.status
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [_alias, description, index, mac_address, name, status].hash
    end
  end
end
