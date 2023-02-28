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
  # The incident's relationships for an update request.
  class IncidentUpdateRelationships
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Relationship to user.
    attr_accessor :commander_user

    # A relationship reference for multiple integration metadata objects.
    attr_accessor :integrations

    # A relationship reference for postmortems.
    attr_accessor :postmortem

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'commander_user' => :'commander_user',
        :'integrations' => :'integrations',
        :'postmortem' => :'postmortem'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'commander_user' => :'NullableRelationshipToUser',
        :'integrations' => :'RelationshipToIncidentIntegrationMetadatas',
        :'postmortem' => :'RelationshipToIncidentPostmortem'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::IncidentUpdateRelationships` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::IncidentUpdateRelationships`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'commander_user')
        self.commander_user = attributes[:'commander_user']
      end

      if attributes.key?(:'integrations')
        self.integrations = attributes[:'integrations']
      end

      if attributes.key?(:'postmortem')
        self.postmortem = attributes[:'postmortem']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          commander_user == o.commander_user &&
          integrations == o.integrations &&
          postmortem == o.postmortem
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:commander_user, :integrations, :postmortem].hash
    end
  end
end
