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
  # Composed target for `validatesJSONPath` operator.
  class SyntheticsAssertionJSONPathTargetTarget
    include BaseGenericModel

    # The element from the list of results to assert on.  To choose from the first element in the list `firstElementMatches`, every element in the list `everyElementMatches`, at least one element in the list `atLeastOneElementMatches` or the serialized value of the list `serializationMatches`.
    attr_accessor :elements_operator

    # The JSON path to assert.
    attr_accessor :json_path

    # The specific operator to use on the path.
    attr_accessor :operator

    # The path target value to compare to.
    attr_accessor :target_value

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'elements_operator' => :'elementsOperator',
        :'json_path' => :'jsonPath',
        :'operator' => :'operator',
        :'target_value' => :'targetValue'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'elements_operator' => :'String',
        :'json_path' => :'String',
        :'operator' => :'String',
        :'target_value' => :'Object'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsAssertionJSONPathTargetTarget` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsAssertionJSONPathTargetTarget`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'elements_operator')
        self.elements_operator = attributes[:'elements_operator']
      end

      if attributes.key?(:'json_path')
        self.json_path = attributes[:'json_path']
      end

      if attributes.key?(:'operator')
        self.operator = attributes[:'operator']
      end

      if attributes.key?(:'target_value')
        self.target_value = attributes[:'target_value']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          elements_operator == o.elements_operator &&
          json_path == o.json_path &&
          operator == o.operator &&
          target_value == o.target_value
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [elements_operator, json_path, operator, target_value].hash
    end
  end
end
