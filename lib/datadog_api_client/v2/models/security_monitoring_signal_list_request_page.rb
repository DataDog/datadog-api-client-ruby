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
  # The paging attributes for listing security signals.
  class SecurityMonitoringSignalListRequestPage
    include BaseGenericModel

    # A list of results using the cursor provided in the previous query.
    attr_accessor :cursor

    # The maximum number of security signals in the response.
    attr_reader :limit

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cursor' => :'cursor',
        :'limit' => :'limit'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'cursor' => :'String',
        :'limit' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringSignalListRequestPage` initialize method"
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

      if attributes.key?(:'cursor')
        self.cursor = attributes[:'cursor']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@limit.nil? && @limit > 1000
      true
    end

    # Custom attribute writer method with validation
    # @param limit [Object] Object to be assigned
    # @!visibility private
    def limit=(limit)
      if !limit.nil? && limit > 1000
        fail ArgumentError, 'invalid value for "limit", must be smaller than or equal to 1000.'
      end
      @limit = limit
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cursor == o.cursor &&
          limit == o.limit
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [cursor, limit].hash
    end
  end
end
