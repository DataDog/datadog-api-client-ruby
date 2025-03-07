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
  # Team creation attributes
  class TeamCreateAttributes
    include BaseGenericModel

    # Unicode representation of the avatar for the team, limited to a single grapheme
    attr_accessor :avatar

    # Banner selection for the team
    attr_accessor :banner

    # Free-form markdown description/content for the team's homepage
    attr_accessor :description

    # The team's identifier
    attr_reader :handle

    # Collection of hidden modules for the team
    attr_accessor :hidden_modules

    # The name of the team
    attr_reader :name

    # Collection of visible modules for the team
    attr_accessor :visible_modules

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'avatar' => :'avatar',
        :'banner' => :'banner',
        :'description' => :'description',
        :'handle' => :'handle',
        :'hidden_modules' => :'hidden_modules',
        :'name' => :'name',
        :'visible_modules' => :'visible_modules'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'avatar' => :'String',
        :'banner' => :'Integer',
        :'description' => :'String',
        :'handle' => :'String',
        :'hidden_modules' => :'Array<String>',
        :'name' => :'String',
        :'visible_modules' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'avatar',
        :'banner',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::TeamCreateAttributes` initialize method"
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

      if attributes.key?(:'avatar')
        self.avatar = attributes[:'avatar']
      end

      if attributes.key?(:'banner')
        self.banner = attributes[:'banner']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'handle')
        self.handle = attributes[:'handle']
      end

      if attributes.key?(:'hidden_modules')
        if (value = attributes[:'hidden_modules']).is_a?(Array)
          self.hidden_modules = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'visible_modules')
        if (value = attributes[:'visible_modules']).is_a?(Array)
          self.visible_modules = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @handle.nil?
      return false if @handle.to_s.length > 195
      return false if @name.nil?
      return false if @name.to_s.length > 200
      true
    end

    # Custom attribute writer method with validation
    # @param handle [Object] Object to be assigned
    # @!visibility private
    def handle=(handle)
      if handle.nil?
        fail ArgumentError, 'invalid value for "handle", handle cannot be nil.'
      end
      if handle.to_s.length > 195
        fail ArgumentError, 'invalid value for "handle", the character length must be smaller than or equal to 195.'
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
      if name.to_s.length > 200
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 200.'
      end
      @name = name
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
          avatar == o.avatar &&
          banner == o.banner &&
          description == o.description &&
          handle == o.handle &&
          hidden_modules == o.hidden_modules &&
          name == o.name &&
          visible_modules == o.visible_modules &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [avatar, banner, description, handle, hidden_modules, name, visible_modules, additional_properties].hash
    end
  end
end
