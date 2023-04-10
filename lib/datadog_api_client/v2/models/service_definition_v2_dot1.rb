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
  # Service definition v2.1 for providing service metadata and integrations.
  class ServiceDefinitionV2Dot1
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Identifier for a group of related services serving a product feature, which the service is a part of.
    attr_accessor :application

    # A list of contacts related to the services.
    attr_accessor :contacts

    # Unique identifier of the service. Must be unique across all services and is used to match with a service in Datadog.
    attr_reader :dd_service

    # A short description of the service.
    attr_accessor :description

    # Extensions to v2.1 schema.
    attr_accessor :extensions

    # Third party integrations that Datadog supports.
    attr_accessor :integrations

    # The current life cycle phase of the service.
    attr_accessor :lifecycle

    # A list of links related to the services.
    attr_accessor :links

    # Schema version being used.
    attr_reader :schema_version

    # A set of custom tags.
    attr_accessor :tags

    # Team that owns the service. It is used to locate a team defined in Datadog Teams if it exists.
    attr_accessor :team

    # Importance of the service.
    attr_accessor :tier

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'application' => :'application',
        :'contacts' => :'contacts',
        :'dd_service' => :'dd-service',
        :'description' => :'description',
        :'extensions' => :'extensions',
        :'integrations' => :'integrations',
        :'lifecycle' => :'lifecycle',
        :'links' => :'links',
        :'schema_version' => :'schema-version',
        :'tags' => :'tags',
        :'team' => :'team',
        :'tier' => :'tier'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'application' => :'String',
        :'contacts' => :'Array<ServiceDefinitionV2Dot1Contact>',
        :'dd_service' => :'String',
        :'description' => :'String',
        :'extensions' => :'Hash<String, Object>',
        :'integrations' => :'ServiceDefinitionV2Dot1Integrations',
        :'lifecycle' => :'String',
        :'links' => :'Array<ServiceDefinitionV2Dot1Link>',
        :'schema_version' => :'ServiceDefinitionV2Dot1Version',
        :'tags' => :'Array<String>',
        :'team' => :'String',
        :'tier' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ServiceDefinitionV2Dot1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::ServiceDefinitionV2Dot1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'application')
        self.application = attributes[:'application']
      end

      if attributes.key?(:'contacts')
        if (value = attributes[:'contacts']).is_a?(Array)
          self.contacts = value
        end
      end

      if attributes.key?(:'dd_service')
        self.dd_service = attributes[:'dd_service']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'extensions')
        self.extensions = attributes[:'extensions']
      end

      if attributes.key?(:'integrations')
        self.integrations = attributes[:'integrations']
      end

      if attributes.key?(:'lifecycle')
        self.lifecycle = attributes[:'lifecycle']
      end

      if attributes.key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      end

      if attributes.key?(:'schema_version')
        self.schema_version = attributes[:'schema_version']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.key?(:'tier')
        self.tier = attributes[:'tier']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @dd_service.nil?
      return false if @schema_version.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param dd_service [Object] Object to be assigned
    # @!visibility private
    def dd_service=(dd_service)
      if dd_service.nil?
        fail ArgumentError, 'invalid value for "dd_service", dd_service cannot be nil.'
      end
      @dd_service = dd_service
    end

    # Custom attribute writer method with validation
    # @param schema_version [Object] Object to be assigned
    # @!visibility private
    def schema_version=(schema_version)
      if schema_version.nil?
        fail ArgumentError, 'invalid value for "schema_version", schema_version cannot be nil.'
      end
      @schema_version = schema_version
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          application == o.application &&
          contacts == o.contacts &&
          dd_service == o.dd_service &&
          description == o.description &&
          extensions == o.extensions &&
          integrations == o.integrations &&
          lifecycle == o.lifecycle &&
          links == o.links &&
          schema_version == o.schema_version &&
          tags == o.tags &&
          team == o.team &&
          tier == o.tier
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [application, contacts, dd_service, description, extensions, integrations, lifecycle, links, schema_version, tags, team, tier].hash
    end
  end
end