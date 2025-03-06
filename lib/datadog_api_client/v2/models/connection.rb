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
  # The definition of `Connection` object.
  class Connection
    include BaseGenericModel

    # The `Connection` `connectionId`.
    attr_reader :connection_id

    # The `Connection` `label`.
    attr_reader :label

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'connection_id' => :'connectionId',
        :'label' => :'label'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'connection_id' => :'String',
        :'label' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::Connection` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::Connection`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'connection_id')
        self.connection_id = attributes[:'connection_id']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @connection_id.nil?
      return false if @label.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param connection_id [Object] Object to be assigned
    # @!visibility private
    def connection_id=(connection_id)
      if connection_id.nil?
        fail ArgumentError, 'invalid value for "connection_id", connection_id cannot be nil.'
      end
      @connection_id = connection_id
    end

    # Custom attribute writer method with validation
    # @param label [Object] Object to be assigned
    # @!visibility private
    def label=(label)
      if label.nil?
        fail ArgumentError, 'invalid value for "label", label cannot be nil.'
      end
      @label = label
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          connection_id == o.connection_id &&
          label == o.label
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [connection_id, label].hash
    end
  end
end
