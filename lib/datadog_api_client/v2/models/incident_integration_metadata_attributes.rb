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
  # Incident integration metadata's attributes for a create request.
  class IncidentIntegrationMetadataAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # UUID of the incident this integration metadata is connected to.
    attr_accessor :incident_id

    # A number indicating the type of integration this metadata is for. 1 indicates Slack;
    # 8 indicates Jira.
    attr_reader :integration_type

    # Incident integration metadata's metadata attribute.
    attr_reader :metadata

    # A number indicating the status of this integration metadata. 0 indicates unknown;
    # 1 indicates pending; 2 indicates complete; 3 indicates manually created;
    # 4 indicates manually updated; 5 indicates failed.
    attr_reader :status

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'incident_id' => :'incident_id',
        :'integration_type' => :'integration_type',
        :'metadata' => :'metadata',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'incident_id' => :'String',
        :'integration_type' => :'Integer',
        :'metadata' => :'IncidentIntegrationMetadataMetadata',
        :'status' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::IncidentIntegrationMetadataAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::IncidentIntegrationMetadataAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'incident_id')
        self.incident_id = attributes[:'incident_id']
      end

      if attributes.key?(:'integration_type')
        self.integration_type = attributes[:'integration_type']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @integration_type.nil?
      return false if @integration_type > 9
      return false if @metadata.nil?
      return false if !@status.nil? && @status > 5
      true
    end

    # Custom attribute writer method with validation
    # @param integration_type [Object] Object to be assigned
    # @!visibility private
    def integration_type=(integration_type)
      if integration_type.nil?
        fail ArgumentError, 'invalid value for "integration_type", integration_type cannot be nil.'
      end
      if integration_type > 9
        fail ArgumentError, 'invalid value for "integration_type", must be smaller than or equal to 9.'
      end
      @integration_type = integration_type
    end

    # Custom attribute writer method with validation
    # @param metadata [Object] Object to be assigned
    # @!visibility private
    def metadata=(metadata)
      if metadata.nil?
        fail ArgumentError, 'invalid value for "metadata", metadata cannot be nil.'
      end
      @metadata = metadata
    end

    # Custom attribute writer method with validation
    # @param status [Object] Object to be assigned
    # @!visibility private
    def status=(status)
      if !status.nil? && status > 5
        fail ArgumentError, 'invalid value for "status", must be smaller than or equal to 5.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          incident_id == o.incident_id &&
          integration_type == o.integration_type &&
          metadata == o.metadata &&
          status == o.status
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [incident_id, integration_type, metadata, status].hash
    end
  end
end
