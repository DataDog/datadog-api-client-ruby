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
  # Object representing a given user entity.
  class SecurityMonitoringTriageUser
    include BaseGenericModel

    # The handle for this user account.
    attr_accessor :handle

    # Gravatar icon associated to the user.
    attr_accessor :icon

    # Numerical ID assigned by Datadog to this user account.
    attr_accessor :id

    # The name for this user account.
    attr_accessor :name

    # UUID assigned by Datadog to this user account.
    attr_reader :uuid

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'handle' => :'handle',
        :'icon' => :'icon',
        :'id' => :'id',
        :'name' => :'name',
        :'uuid' => :'uuid'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'handle' => :'String',
        :'icon' => :'String',
        :'id' => :'Integer',
        :'name' => :'String',
        :'uuid' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'name',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringTriageUser` initialize method"
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

      if attributes.key?(:'handle')
        self.handle = attributes[:'handle']
      end

      if attributes.key?(:'icon')
        self.icon = attributes[:'icon']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @uuid.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param uuid [Object] Object to be assigned
    # @!visibility private
    def uuid=(uuid)
      if uuid.nil?
        fail ArgumentError, 'invalid value for "uuid", uuid cannot be nil.'
      end
      @uuid = uuid
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
          handle == o.handle &&
          icon == o.icon &&
          id == o.id &&
          name == o.name &&
          uuid == o.uuid &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [handle, icon, id, name, uuid, additional_properties].hash
    end
  end
end
