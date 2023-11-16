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
  # The incident's relationships from a response.
  class IncidentResponseRelationships
    include BaseGenericModel

    # A relationship reference for attachments.
    attr_accessor :attachments

    # Relationship to user.
    attr_accessor :commander_user

    # Relationship to user.
    attr_accessor :created_by_user

    # Relationship to impacts.
    attr_accessor :impacts

    # A relationship reference for multiple integration metadata objects.
    attr_accessor :integrations

    # Relationship to user.
    attr_accessor :last_modified_by_user

    # Relationship to incident responders.
    attr_accessor :responders

    # Relationship to incident user defined fields.
    attr_accessor :user_defined_fields

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'attachments' => :'attachments',
        :'commander_user' => :'commander_user',
        :'created_by_user' => :'created_by_user',
        :'impacts' => :'impacts',
        :'integrations' => :'integrations',
        :'last_modified_by_user' => :'last_modified_by_user',
        :'responders' => :'responders',
        :'user_defined_fields' => :'user_defined_fields'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'attachments' => :'RelationshipToIncidentAttachment',
        :'commander_user' => :'NullableRelationshipToUser',
        :'created_by_user' => :'RelationshipToUser',
        :'impacts' => :'RelationshipToIncidentImpacts',
        :'integrations' => :'RelationshipToIncidentIntegrationMetadatas',
        :'last_modified_by_user' => :'RelationshipToUser',
        :'responders' => :'RelationshipToIncidentResponders',
        :'user_defined_fields' => :'RelationshipToIncidentUserDefinedFields'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'commander_user',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::IncidentResponseRelationships` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::IncidentResponseRelationships`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'attachments')
        self.attachments = attributes[:'attachments']
      end

      if attributes.key?(:'commander_user')
        self.commander_user = attributes[:'commander_user']
      end

      if attributes.key?(:'created_by_user')
        self.created_by_user = attributes[:'created_by_user']
      end

      if attributes.key?(:'impacts')
        self.impacts = attributes[:'impacts']
      end

      if attributes.key?(:'integrations')
        self.integrations = attributes[:'integrations']
      end

      if attributes.key?(:'last_modified_by_user')
        self.last_modified_by_user = attributes[:'last_modified_by_user']
      end

      if attributes.key?(:'responders')
        self.responders = attributes[:'responders']
      end

      if attributes.key?(:'user_defined_fields')
        self.user_defined_fields = attributes[:'user_defined_fields']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attachments == o.attachments &&
          commander_user == o.commander_user &&
          created_by_user == o.created_by_user &&
          impacts == o.impacts &&
          integrations == o.integrations &&
          last_modified_by_user == o.last_modified_by_user &&
          responders == o.responders &&
          user_defined_fields == o.user_defined_fields
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [attachments, commander_user, created_by_user, impacts, integrations, last_modified_by_user, responders, user_defined_fields].hash
    end
  end
end
