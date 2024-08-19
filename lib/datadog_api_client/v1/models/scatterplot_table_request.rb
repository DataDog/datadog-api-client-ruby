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
  # Scatterplot request containing formulas and functions.
  class ScatterplotTableRequest
    include BaseGenericModel

    # List of Scatterplot formulas that operate on queries.
    attr_accessor :formulas

    # List of queries that can be returned directly or used in formulas.
    attr_accessor :queries

    # Timeseries, scalar, or event list response. Event list response formats are supported by Geomap widgets.
    attr_accessor :response_format

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'formulas' => :'formulas',
        :'queries' => :'queries',
        :'response_format' => :'response_format'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'formulas' => :'Array<ScatterplotWidgetFormula>',
        :'queries' => :'Array<FormulaAndFunctionQueryDefinition>',
        :'response_format' => :'FormulaAndFunctionResponseFormat'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ScatterplotTableRequest` initialize method"
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

      if attributes.key?(:'formulas')
        if (value = attributes[:'formulas']).is_a?(Array)
          self.formulas = value
        end
      end

      if attributes.key?(:'queries')
        if (value = attributes[:'queries']).is_a?(Array)
          self.queries = value
        end
      end

      if attributes.key?(:'response_format')
        self.response_format = attributes[:'response_format']
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
          formulas == o.formulas &&
          queries == o.queries &&
          response_format == o.response_format
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [formulas, queries, response_format].hash
    end
  end
end
