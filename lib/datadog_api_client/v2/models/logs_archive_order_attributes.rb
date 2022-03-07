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
  # The attributes associated with the archive order.
  class LogsArchiveOrderAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # An ordered array of `<ARCHIVE_ID>` strings, the order of archive IDs in the array
    # define the overall archives order for Datadog.
    attr_accessor :archive_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'archive_ids' => :'archive_ids'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'archive_ids' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::LogsArchiveOrderAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::LogsArchiveOrderAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'archive_ids')
        if (value = attributes[:'archive_ids']).is_a?(Array)
          self.archive_ids = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if @archive_ids.nil?
        invalid_properties.push('invalid value for "archive_ids", archive_ids cannot be nil.')
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @archive_ids.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param archive_ids [Object] Object to be assigned
    # @!visibility private
    def archive_ids=(archive_ids)
      if archive_ids.nil?
        fail ArgumentError, 'invalid value for "archive_ids", archive_ids cannot be nil.'
      end
      @archive_ids = archive_ids
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          archive_ids == o.archive_ids
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [archive_ids].hash
    end
  end
end
