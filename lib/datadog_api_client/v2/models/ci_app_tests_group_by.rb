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
  # A group-by rule.
  class CIAppTestsGroupBy
    include BaseGenericModel

    # The name of the facet to use (required).
    attr_reader :facet

    # Used to perform a histogram computation (only for measure facets).
    # At most, 100 buckets are allowed, the number of buckets is `(max - min)/interval`.
    attr_accessor :histogram

    # The maximum buckets to return for this group-by.
    attr_accessor :limit

    # The value to use for logs that don't have the facet used to group-by.
    attr_accessor :missing

    # A sort rule. The `aggregation` field is required when `type` is `measure`.
    attr_accessor :sort

    # A resulting object to put the given computes in over all the matching records.
    attr_accessor :total

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'facet' => :'facet',
        :'histogram' => :'histogram',
        :'limit' => :'limit',
        :'missing' => :'missing',
        :'sort' => :'sort',
        :'total' => :'total'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'facet' => :'String',
        :'histogram' => :'CIAppGroupByHistogram',
        :'limit' => :'Integer',
        :'missing' => :'CIAppGroupByMissing',
        :'sort' => :'CIAppAggregateSort',
        :'total' => :'CIAppGroupByTotal'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CIAppTestsGroupBy` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::CIAppTestsGroupBy`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'facet')
        self.facet = attributes[:'facet']
      end

      if attributes.key?(:'histogram')
        self.histogram = attributes[:'histogram']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'missing')
        self.missing = attributes[:'missing']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @facet.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param facet [Object] Object to be assigned
    # @!visibility private
    def facet=(facet)
      if facet.nil?
        fail ArgumentError, 'invalid value for "facet", facet cannot be nil.'
      end
      @facet = facet
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          facet == o.facet &&
          histogram == o.histogram &&
          limit == o.limit &&
          missing == o.missing &&
          sort == o.sort &&
          total == o.total
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [facet, histogram, limit, missing, sort, total].hash
    end
  end
end
