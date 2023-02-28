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
  # Updated SLO List widget.
  class SLOListWidgetRequest
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Updated SLO List widget.
    attr_reader :query

    # Widget request type.
    attr_reader :request_type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'query' => :'query',
        :'request_type' => :'request_type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'query' => :'SLOListWidgetQuery',
        :'request_type' => :'SLOListWidgetRequestType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOListWidgetRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOListWidgetRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'request_type')
        self.request_type = attributes[:'request_type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @query.nil?
      return false if @request_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param query [Object] Object to be assigned
    # @!visibility private
    def query=(query)
      if query.nil?
        fail ArgumentError, 'invalid value for "query", query cannot be nil.'
      end
      @query = query
    end

    # Custom attribute writer method with validation
    # @param request_type [Object] Object to be assigned
    # @!visibility private
    def request_type=(request_type)
      if request_type.nil?
        fail ArgumentError, 'invalid value for "request_type", request_type cannot be nil.'
      end
      @request_type = request_type
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          query == o.query &&
          request_type == o.request_type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:query, :request_type].hash
    end
  end
end
