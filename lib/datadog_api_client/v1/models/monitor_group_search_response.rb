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
  # The response of a monitor group search.
  class MonitorGroupSearchResponse
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The counts of monitor groups per different criteria.
    attr_accessor :counts

    # The list of found monitor groups.
    attr_accessor :groups

    # Metadata about the response.
    attr_accessor :metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'counts' => :'counts',
        :'groups' => :'groups',
        :'metadata' => :'metadata'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'counts' => :'MonitorGroupSearchResponseCounts',
        :'groups' => :'Array<MonitorGroupSearchResult>',
        :'metadata' => :'MonitorSearchResponseMetadata'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::MonitorGroupSearchResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::MonitorGroupSearchResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'counts')
        self.counts = attributes[:'counts']
      end

      if attributes.key?(:'groups')
        if (value = attributes[:'groups']).is_a?(Array)
          self.groups = value
        end
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
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
          counts == o.counts &&
          groups == o.groups &&
          metadata == o.metadata
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:counts, :groups, :metadata].hash
    end
  end
end
