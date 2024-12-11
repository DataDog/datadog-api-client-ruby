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
  # Facet data for incidents returned by a search query.
  class IncidentSearchResponseFacetsData
    include BaseGenericModel

    # Facet data for incident commander users.
    attr_accessor :commander

    # Facet data for incident creator users.
    attr_accessor :created_by

    # Facet data for incident property fields.
    attr_accessor :fields

    # Facet data for incident impact attributes.
    attr_accessor :impact

    # Facet data for incident last modified by users.
    attr_accessor :last_modified_by

    # Facet data for incident postmortem existence.
    attr_accessor :postmortem

    # Facet data for incident responder users.
    attr_accessor :responder

    # Facet data for incident severity attributes.
    attr_accessor :severity

    # Facet data for incident state attributes.
    attr_accessor :state

    # Facet data for incident time to repair metrics.
    attr_accessor :time_to_repair

    # Facet data for incident time to resolve metrics.
    attr_accessor :time_to_resolve

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'commander' => :'commander',
        :'created_by' => :'created_by',
        :'fields' => :'fields',
        :'impact' => :'impact',
        :'last_modified_by' => :'last_modified_by',
        :'postmortem' => :'postmortem',
        :'responder' => :'responder',
        :'severity' => :'severity',
        :'state' => :'state',
        :'time_to_repair' => :'time_to_repair',
        :'time_to_resolve' => :'time_to_resolve'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'commander' => :'Array<IncidentSearchResponseUserFacetData>',
        :'created_by' => :'Array<IncidentSearchResponseUserFacetData>',
        :'fields' => :'Array<IncidentSearchResponsePropertyFieldFacetData>',
        :'impact' => :'Array<IncidentSearchResponseFieldFacetData>',
        :'last_modified_by' => :'Array<IncidentSearchResponseUserFacetData>',
        :'postmortem' => :'Array<IncidentSearchResponseFieldFacetData>',
        :'responder' => :'Array<IncidentSearchResponseUserFacetData>',
        :'severity' => :'Array<IncidentSearchResponseFieldFacetData>',
        :'state' => :'Array<IncidentSearchResponseFieldFacetData>',
        :'time_to_repair' => :'Array<IncidentSearchResponseNumericFacetData>',
        :'time_to_resolve' => :'Array<IncidentSearchResponseNumericFacetData>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::IncidentSearchResponseFacetsData` initialize method"
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

      if attributes.key?(:'commander')
        if (value = attributes[:'commander']).is_a?(Array)
          self.commander = value
        end
      end

      if attributes.key?(:'created_by')
        if (value = attributes[:'created_by']).is_a?(Array)
          self.created_by = value
        end
      end

      if attributes.key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end

      if attributes.key?(:'impact')
        if (value = attributes[:'impact']).is_a?(Array)
          self.impact = value
        end
      end

      if attributes.key?(:'last_modified_by')
        if (value = attributes[:'last_modified_by']).is_a?(Array)
          self.last_modified_by = value
        end
      end

      if attributes.key?(:'postmortem')
        if (value = attributes[:'postmortem']).is_a?(Array)
          self.postmortem = value
        end
      end

      if attributes.key?(:'responder')
        if (value = attributes[:'responder']).is_a?(Array)
          self.responder = value
        end
      end

      if attributes.key?(:'severity')
        if (value = attributes[:'severity']).is_a?(Array)
          self.severity = value
        end
      end

      if attributes.key?(:'state')
        if (value = attributes[:'state']).is_a?(Array)
          self.state = value
        end
      end

      if attributes.key?(:'time_to_repair')
        if (value = attributes[:'time_to_repair']).is_a?(Array)
          self.time_to_repair = value
        end
      end

      if attributes.key?(:'time_to_resolve')
        if (value = attributes[:'time_to_resolve']).is_a?(Array)
          self.time_to_resolve = value
        end
      end
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
          commander == o.commander &&
          created_by == o.created_by &&
          fields == o.fields &&
          impact == o.impact &&
          last_modified_by == o.last_modified_by &&
          postmortem == o.postmortem &&
          responder == o.responder &&
          severity == o.severity &&
          state == o.state &&
          time_to_repair == o.time_to_repair &&
          time_to_resolve == o.time_to_resolve &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [commander, created_by, fields, impact, last_modified_by, postmortem, responder, severity, state, time_to_repair, time_to_resolve, additional_properties].hash
    end
  end
end
