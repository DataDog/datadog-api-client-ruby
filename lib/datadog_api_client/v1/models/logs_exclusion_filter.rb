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
  # Exclusion filter is defined by a query, a sampling rule, and a active/inactive toggle.
  class LogsExclusionFilter
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Default query is `*`, meaning all logs flowing in the index would be excluded.
    # Scope down exclusion filter to only a subset of logs with a log query.
    attr_accessor :query

    # Sample rate to apply to logs going through this exclusion filter,
    # a value of 1.0 excludes all logs matching the query.
    attr_reader :sample_rate

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'query' => :'query',
        :'sample_rate' => :'sample_rate'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'query' => :'String',
        :'sample_rate' => :'Float'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsExclusionFilter` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogsExclusionFilter`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'sample_rate')
        self.sample_rate = attributes[:'sample_rate']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @sample_rate.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param sample_rate [Object] Object to be assigned
    # @!visibility private
    def sample_rate=(sample_rate)
      if sample_rate.nil?
        fail ArgumentError, 'invalid value for "sample_rate", sample_rate cannot be nil.'
      end
      @sample_rate = sample_rate
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          query == o.query &&
          sample_rate == o.sample_rate
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:query, :sample_rate].hash
    end
  end
end
