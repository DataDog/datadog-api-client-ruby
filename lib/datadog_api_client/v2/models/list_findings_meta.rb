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
  # Metadata for pagination.
  class ListFindingsMeta
    include BaseGenericModel

    # Pagination and findings count information.
    attr_accessor :page

    # The point in time corresponding to the listed findings.
    attr_reader :snapshot_timestamp

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'page' => :'page',
        :'snapshot_timestamp' => :'snapshot_timestamp'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'page' => :'ListFindingsPage',
        :'snapshot_timestamp' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ListFindingsMeta` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::ListFindingsMeta`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'snapshot_timestamp')
        self.snapshot_timestamp = attributes[:'snapshot_timestamp']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@snapshot_timestamp.nil? && @snapshot_timestamp < 1
      true
    end

    # Custom attribute writer method with validation
    # @param snapshot_timestamp [Object] Object to be assigned
    # @!visibility private
    def snapshot_timestamp=(snapshot_timestamp)
      if !snapshot_timestamp.nil? && snapshot_timestamp < 1
        fail ArgumentError, 'invalid value for "snapshot_timestamp", must be greater than or equal to 1.'
      end
      @snapshot_timestamp = snapshot_timestamp
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          page == o.page &&
          snapshot_timestamp == o.snapshot_timestamp
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [page, snapshot_timestamp].hash
    end
  end
end
