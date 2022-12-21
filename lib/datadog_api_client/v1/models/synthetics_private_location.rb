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
  # Object containing information about the private location to create.
  class SyntheticsPrivateLocation
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Description of the private location.
    attr_reader :description

    # Unique identifier of the private location.
    attr_accessor :id

    # Object containing metadata about the private location.
    attr_accessor :metadata

    # Name of the private location.
    attr_reader :name

    # Secrets for the private location. Only present in the response when creating the private location.
    attr_accessor :secrets

    # Array of tags attached to the private location.
    attr_reader :tags

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'description' => :'description',
        :'id' => :'id',
        :'metadata' => :'metadata',
        :'name' => :'name',
        :'secrets' => :'secrets',
        :'tags' => :'tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'description' => :'String',
        :'id' => :'String',
        :'metadata' => :'SyntheticsPrivateLocationMetadata',
        :'name' => :'String',
        :'secrets' => :'SyntheticsPrivateLocationSecrets',
        :'tags' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsPrivateLocation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsPrivateLocation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'secrets')
        self.secrets = attributes[:'secrets']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @description.nil?
      return false if @name.nil?
      return false if @tags.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param description [Object] Object to be assigned
    # @!visibility private
    def description=(description)
      if description.nil?
        fail ArgumentError, 'invalid value for "description", description cannot be nil.'
      end
      @description = description
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
    # @param tags [Object] Object to be assigned
    # @!visibility private
    def tags=(tags)
      if tags.nil?
        fail ArgumentError, 'invalid value for "tags", tags cannot be nil.'
      end
      @tags = tags
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          description == o.description &&
          id == o.id &&
          metadata == o.metadata &&
          name == o.name &&
          secrets == o.secrets &&
          tags == o.tags
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [description, id, metadata, name, secrets, tags].hash
    end
  end
end
