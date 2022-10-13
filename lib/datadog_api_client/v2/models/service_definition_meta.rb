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
  # Metadata about a service definition.
  class ServiceDefinitionMeta
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # GitHub HTML URL.
    attr_accessor :github_html_url

    # Ingestion schema version.
    attr_accessor :ingested_schema_version

    # Ingestion source of the service definition.
    attr_accessor :ingestion_source

    # Last modified time of the service definition.
    attr_accessor :last_modified_time

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'github_html_url' => :'github-html-url',
        :'ingested_schema_version' => :'ingested-schema-version',
        :'ingestion_source' => :'ingestion-source',
        :'last_modified_time' => :'last-modified-time'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'github_html_url' => :'String',
        :'ingested_schema_version' => :'String',
        :'ingestion_source' => :'String',
        :'last_modified_time' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ServiceDefinitionMeta` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::ServiceDefinitionMeta`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'github_html_url')
        self.github_html_url = attributes[:'github_html_url']
      end

      if attributes.key?(:'ingested_schema_version')
        self.ingested_schema_version = attributes[:'ingested_schema_version']
      end

      if attributes.key?(:'ingestion_source')
        self.ingestion_source = attributes[:'ingestion_source']
      end

      if attributes.key?(:'last_modified_time')
        self.last_modified_time = attributes[:'last_modified_time']
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
          github_html_url == o.github_html_url &&
          ingested_schema_version == o.ingested_schema_version &&
          ingestion_source == o.ingestion_source &&
          last_modified_time == o.last_modified_time
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [github_html_url, ingested_schema_version, ingestion_source, last_modified_time].hash
    end
  end
end