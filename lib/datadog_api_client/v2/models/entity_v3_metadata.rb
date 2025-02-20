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
  # The definition of Entity V3 Metadata object.
  class EntityV3Metadata
    include BaseGenericModel

    # The additional owners of the entity, usually a team.
    attr_accessor :additional_owners

    # A list of contacts for the entity.
    attr_accessor :contacts

    # Short description of the entity. The UI can leverage the description for display.
    attr_accessor :description

    # User friendly name of the entity. The UI can leverage the display name for display.
    attr_accessor :display_name

    # A read-only globally unique identifier for the entity generated by Datadog.  User supplied values are ignored.
    attr_reader :id

    # The entity reference from which to inherit metadata
    attr_accessor :inherit_from

    # A list of links for the entity.
    attr_accessor :links

    # A read-only set of Datadog managed attributes generated by Datadog.  User supplied values are ignored.
    attr_accessor :managed

    # Unique name given to an entity under the kind/namespace.
    attr_reader :name

    # Namespace is a part of unique identifier. It has a default value of 'default'.
    attr_reader :namespace

    # The owner of the entity, usually a team.
    attr_accessor :owner

    # A set of custom tags.
    attr_accessor :tags

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'additional_owners' => :'additionalOwners',
        :'contacts' => :'contacts',
        :'description' => :'description',
        :'display_name' => :'displayName',
        :'id' => :'id',
        :'inherit_from' => :'inheritFrom',
        :'links' => :'links',
        :'managed' => :'managed',
        :'name' => :'name',
        :'namespace' => :'namespace',
        :'owner' => :'owner',
        :'tags' => :'tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'additional_owners' => :'Array<EntityV3MetadataAdditionalOwnersItems>',
        :'contacts' => :'Array<EntityV3MetadataContactsItems>',
        :'description' => :'String',
        :'display_name' => :'String',
        :'id' => :'String',
        :'inherit_from' => :'String',
        :'links' => :'Array<EntityV3MetadataLinksItems>',
        :'managed' => :'Hash<String, Object>',
        :'name' => :'String',
        :'namespace' => :'String',
        :'owner' => :'String',
        :'tags' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::EntityV3Metadata` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::EntityV3Metadata`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'additional_owners')
        if (value = attributes[:'additional_owners']).is_a?(Array)
          self.additional_owners = value
        end
      end

      if attributes.key?(:'contacts')
        if (value = attributes[:'contacts']).is_a?(Array)
          self.contacts = value
        end
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'inherit_from')
        self.inherit_from = attributes[:'inherit_from']
      end

      if attributes.key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      end

      if attributes.key?(:'managed')
        self.managed = attributes[:'managed']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'namespace')
        self.namespace = attributes[:'namespace']
      end

      if attributes.key?(:'owner')
        self.owner = attributes[:'owner']
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
      return false if !@id.nil? && @id.to_s.length < 1
      return false if @name.nil?
      return false if @name.to_s.length < 1
      return false if !@namespace.nil? && @namespace.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param id [Object] Object to be assigned
    # @!visibility private
    def id=(id)
      if !id.nil? && id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end
      @id = id
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param namespace [Object] Object to be assigned
    # @!visibility private
    def namespace=(namespace)
      if !namespace.nil? && namespace.to_s.length < 1
        fail ArgumentError, 'invalid value for "namespace", the character length must be great than or equal to 1.'
      end
      @namespace = namespace
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_owners == o.additional_owners &&
          contacts == o.contacts &&
          description == o.description &&
          display_name == o.display_name &&
          id == o.id &&
          inherit_from == o.inherit_from &&
          links == o.links &&
          managed == o.managed &&
          name == o.name &&
          namespace == o.namespace &&
          owner == o.owner &&
          tags == o.tags
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [additional_owners, contacts, description, display_name, id, inherit_from, links, managed, name, namespace, owner, tags].hash
    end
  end
end
