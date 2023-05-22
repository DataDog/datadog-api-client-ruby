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
  # Formula to be used in a Scatterplot widget query.
  class ScatterplotWidgetFormula
    include BaseGenericModel

    # Expression alias.
    attr_accessor :_alias

    # Dimension of the Scatterplot.
    attr_reader :dimension

    # String expression built from queries, formulas, and functions.
    attr_reader :formula

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'_alias' => :'alias',
        :'dimension' => :'dimension',
        :'formula' => :'formula'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'_alias' => :'String',
        :'dimension' => :'ScatterplotDimension',
        :'formula' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ScatterplotWidgetFormula` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ScatterplotWidgetFormula`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'_alias')
        self._alias = attributes[:'_alias']
      end

      if attributes.key?(:'dimension')
        self.dimension = attributes[:'dimension']
      end

      if attributes.key?(:'formula')
        self.formula = attributes[:'formula']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @dimension.nil?
      return false if @formula.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param dimension [Object] Object to be assigned
    # @!visibility private
    def dimension=(dimension)
      if dimension.nil?
        fail ArgumentError, 'invalid value for "dimension", dimension cannot be nil.'
      end
      @dimension = dimension
    end

    # Custom attribute writer method with validation
    # @param formula [Object] Object to be assigned
    # @!visibility private
    def formula=(formula)
      if formula.nil?
        fail ArgumentError, 'invalid value for "formula", formula cannot be nil.'
      end
      @formula = formula
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _alias == o._alias &&
          dimension == o.dimension &&
          formula == o.formula
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [_alias, dimension, formula].hash
    end
  end
end
