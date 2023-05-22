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
  # Object describing the error.
  class SLOBulkDeleteError
    include BaseGenericModel

    # The ID of the service level objective object associated with
    # this error.
    attr_reader :id

    # The error message.
    attr_reader :message

    # The timeframe of the threshold associated with this error
    # or "all" if all thresholds are affected.
    attr_reader :timeframe

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'id' => :'id',
        :'message' => :'message',
        :'timeframe' => :'timeframe'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'id' => :'String',
        :'message' => :'String',
        :'timeframe' => :'SLOErrorTimeframe'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOBulkDeleteError` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOBulkDeleteError`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'timeframe')
        self.timeframe = attributes[:'timeframe']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @id.nil?
      return false if @message.nil?
      return false if @timeframe.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param id [Object] Object to be assigned
    # @!visibility private
    def id=(id)
      if id.nil?
        fail ArgumentError, 'invalid value for "id", id cannot be nil.'
      end
      @id = id
    end

    # Custom attribute writer method with validation
    # @param message [Object] Object to be assigned
    # @!visibility private
    def message=(message)
      if message.nil?
        fail ArgumentError, 'invalid value for "message", message cannot be nil.'
      end
      @message = message
    end

    # Custom attribute writer method with validation
    # @param timeframe [Object] Object to be assigned
    # @!visibility private
    def timeframe=(timeframe)
      if timeframe.nil?
        fail ArgumentError, 'invalid value for "timeframe", timeframe cannot be nil.'
      end
      @timeframe = timeframe
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          message == o.message &&
          timeframe == o.timeframe
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [id, message, timeframe].hash
    end
  end
end
