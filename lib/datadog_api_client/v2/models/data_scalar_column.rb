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
  # A column containing the numerical results for a formula or query.
  class DataScalarColumn
    include BaseGenericModel

    # Metadata for the resulting numerical values.
    attr_accessor :meta

    # The name referencing the formula or query for this column.
    attr_accessor :name

    # The type of column present for numbers.
    attr_accessor :type

    # The array of numerical values for one formula or query.
    attr_accessor :values

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'meta' => :'meta',
        :'name' => :'name',
        :'type' => :'type',
        :'values' => :'values'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'meta' => :'ScalarMeta',
        :'name' => :'String',
        :'type' => :'ScalarColumnTypeNumber',
        :'values' => :'Array<Float>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::DataScalarColumn` initialize method"
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

      if attributes.key?(:'meta')
        self.meta = attributes[:'meta']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'values')
        if (value = attributes[:'values']).is_a?(Array)
          self.values = value
        end
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          meta == o.meta &&
          name == o.name &&
          type == o.type &&
          values == o.values
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [meta, name, type, values].hash
    end
  end
end
