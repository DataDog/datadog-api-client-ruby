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
  # The request for a security signal list.
  class SecurityMonitoringSignalListRequest
    include BaseGenericModel

    # Search filters for listing security signals.
    attr_accessor :filter

    # The paging attributes for listing security signals.
    attr_accessor :page

    # The sort parameters used for querying security signals.
    attr_accessor :sort

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'filter' => :'filter',
        :'page' => :'page',
        :'sort' => :'sort'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'filter' => :'SecurityMonitoringSignalListRequestFilter',
        :'page' => :'SecurityMonitoringSignalListRequestPage',
        :'sort' => :'SecurityMonitoringSignalsSort'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringSignalListRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SecurityMonitoringSignalListRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
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
          filter == o.filter &&
          page == o.page &&
          sort == o.sort
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [filter, page, sort].hash
    end
  end
end
