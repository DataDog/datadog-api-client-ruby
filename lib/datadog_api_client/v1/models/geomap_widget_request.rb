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
  # An updated geomap widget.
  class GeomapWidgetRequest
    include DatadogAPIClient::BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # List of formulas that operate on queries.
    attr_accessor :formulas

    # The log query.
    attr_accessor :log_query

    # The widget metrics query.
    attr_accessor :q

    # List of queries that can be returned directly or used in formulas.
    attr_accessor :queries

    # Timeseries or Scalar response.
    attr_accessor :response_format

    # The log query.
    attr_accessor :rum_query

    # The log query.
    attr_accessor :security_query

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'formulas' => :'formulas',
        :'log_query' => :'log_query',
        :'q' => :'q',
        :'queries' => :'queries',
        :'response_format' => :'response_format',
        :'rum_query' => :'rum_query',
        :'security_query' => :'security_query'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'formulas' => :'Array<WidgetFormula>',
        :'log_query' => :'LogQueryDefinition',
        :'q' => :'String',
        :'queries' => :'Array<FormulaAndFunctionQueryDefinition>',
        :'response_format' => :'FormulaAndFunctionResponseFormat',
        :'rum_query' => :'LogQueryDefinition',
        :'security_query' => :'LogQueryDefinition'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::GeomapWidgetRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::GeomapWidgetRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'formulas')
        if (value = attributes[:'formulas']).is_a?(Array)
          self.formulas = value
        end
      end

      if attributes.key?(:'log_query')
        self.log_query = attributes[:'log_query']
      end

      if attributes.key?(:'q')
        self.q = attributes[:'q']
      end

      if attributes.key?(:'queries')
        if (value = attributes[:'queries']).is_a?(Array)
          self.queries = value
        end
      end

      if attributes.key?(:'response_format')
        self.response_format = attributes[:'response_format']
      end

      if attributes.key?(:'rum_query')
        self.rum_query = attributes[:'rum_query']
      end

      if attributes.key?(:'security_query')
        self.security_query = attributes[:'security_query']
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
          formulas == o.formulas &&
          log_query == o.log_query &&
          q == o.q &&
          queries == o.queries &&
          response_format == o.response_format &&
          rum_query == o.rum_query &&
          security_query == o.security_query
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [formulas, log_query, q, queries, response_format, rum_query, security_query].hash
    end
  end
end
