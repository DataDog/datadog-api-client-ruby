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
  # Message for specifying limits to the number of values returned by a query.
  # This limit is only for scalar queries and has no effect on timeseries queries.
  class FormulaLimit
    include BaseGenericModel

    # The number of results to which to limit.
    attr_reader :count

    # Direction of sort.
    attr_accessor :order

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'count' => :'count',
        :'order' => :'order'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'count' => :'Integer',
        :'order' => :'QuerySortOrder'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::FormulaLimit` initialize method"
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

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@count.nil? && @count > 2147483647
      true
    end

    # Custom attribute writer method with validation
    # @param count [Object] Object to be assigned
    # @!visibility private
    def count=(count)
      if !count.nil? && count > 2147483647
        fail ArgumentError, 'invalid value for "count", must be smaller than or equal to 2147483647.'
      end
      @count = count
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          count == o.count &&
          order == o.order
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [count, order].hash
    end
  end
end
