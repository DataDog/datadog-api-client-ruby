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
  # Framework Data.
  class UpdateCustomFrameworkRequest
    include BaseGenericModel

    # Framework Description
    attr_accessor :description

    # Framework Handle
    attr_reader :handle

    # Framework Icon URL
    attr_accessor :icon_url

    # Framework Name
    attr_reader :name

    # Framework Requirements
    attr_reader :requirements

    # Framework Version
    attr_reader :version

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'description' => :'description',
        :'handle' => :'handle',
        :'icon_url' => :'icon_url',
        :'name' => :'name',
        :'requirements' => :'requirements',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'description' => :'String',
        :'handle' => :'String',
        :'icon_url' => :'String',
        :'name' => :'String',
        :'requirements' => :'Array<FrameworkRequirement>',
        :'version' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::UpdateCustomFrameworkRequest` initialize method"
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

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'handle')
        self.handle = attributes[:'handle']
      end

      if attributes.key?(:'icon_url')
        self.icon_url = attributes[:'icon_url']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'requirements')
        if (value = attributes[:'requirements']).is_a?(Array)
          self.requirements = value
        end
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @handle.nil?
      return false if @name.nil?
      return false if @requirements.nil?
      return false if @version.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param handle [Object] Object to be assigned
    # @!visibility private
    def handle=(handle)
      if handle.nil?
        fail ArgumentError, 'invalid value for "handle", handle cannot be nil.'
      end
      @handle = handle
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
    # @param requirements [Object] Object to be assigned
    # @!visibility private
    def requirements=(requirements)
      if requirements.nil?
        fail ArgumentError, 'invalid value for "requirements", requirements cannot be nil.'
      end
      @requirements = requirements
    end

    # Custom attribute writer method with validation
    # @param version [Object] Object to be assigned
    # @!visibility private
    def version=(version)
      if version.nil?
        fail ArgumentError, 'invalid value for "version", version cannot be nil.'
      end
      @version = version
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
          description == o.description &&
          handle == o.handle &&
          icon_url == o.icon_url &&
          name == o.name &&
          requirements == o.requirements &&
          version == o.version &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [description, handle, icon_url, name, requirements, version, additional_properties].hash
    end
  end
end
