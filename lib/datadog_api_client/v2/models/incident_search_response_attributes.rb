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
  # Attributes returned by an incident search.
  class IncidentSearchResponseAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Facet data for incidents returned by a search query.
    attr_reader :facets

    # Incidents returned by the search.
    attr_reader :incidents

    # Number of incidents returned by the search.
    attr_reader :total

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'facets' => :'facets',
        :'incidents' => :'incidents',
        :'total' => :'total'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'facets' => :'IncidentSearchResponseFacetsData',
        :'incidents' => :'Array<IncidentSearchResponseIncidentsData>',
        :'total' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::IncidentSearchResponseAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::IncidentSearchResponseAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'facets')
        self.facets = attributes[:'facets']
      end

      if attributes.key?(:'incidents')
        if (value = attributes[:'incidents']).is_a?(Array)
          self.incidents = value
        end
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @facets.nil?
      return false if @incidents.nil?
      return false if @total.nil?
      return false if @total > 2147483647
      true
    end

    # Custom attribute writer method with validation
    # @param facets [Object] Object to be assigned
    # @!visibility private
    def facets=(facets)
      if facets.nil?
        fail ArgumentError, 'invalid value for "facets", facets cannot be nil.'
      end
      @facets = facets
    end

    # Custom attribute writer method with validation
    # @param incidents [Object] Object to be assigned
    # @!visibility private
    def incidents=(incidents)
      if incidents.nil?
        fail ArgumentError, 'invalid value for "incidents", incidents cannot be nil.'
      end
      @incidents = incidents
    end

    # Custom attribute writer method with validation
    # @param total [Object] Object to be assigned
    # @!visibility private
    def total=(total)
      if total.nil?
        fail ArgumentError, 'invalid value for "total", total cannot be nil.'
      end
      if total > 2147483647
        fail ArgumentError, 'invalid value for "total", must be smaller than or equal to 2147483647.'
      end
      @total = total
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          facets == o.facets &&
          incidents == o.incidents &&
          total == o.total
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [facets, incidents, total].hash
    end
  end
end
