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
  # The definition of Entity V3 Datastore Spec object.
  class EntityV3DatastoreSpec
    include BaseGenericModel

    # The lifecycle state of the datastore.
    attr_reader :lifecycle

    # The importance of the datastore
    attr_reader :tier

    # The type of datastore
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'lifecycle' => :'lifecycle',
        :'tier' => :'tier',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'lifecycle' => :'String',
        :'tier' => :'String',
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::EntityV3DatastoreSpec` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::EntityV3DatastoreSpec`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lifecycle')
        self.lifecycle = attributes[:'lifecycle']
      end

      if attributes.key?(:'tier')
        self.tier = attributes[:'tier']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@lifecycle.nil? && @lifecycle.to_s.length < 1
      return false if !@tier.nil? && @tier.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param lifecycle [Object] Object to be assigned
    # @!visibility private
    def lifecycle=(lifecycle)
      if !lifecycle.nil? && lifecycle.to_s.length < 1
        fail ArgumentError, 'invalid value for "lifecycle", the character length must be great than or equal to 1.'
      end
      @lifecycle = lifecycle
    end

    # Custom attribute writer method with validation
    # @param tier [Object] Object to be assigned
    # @!visibility private
    def tier=(tier)
      if !tier.nil? && tier.to_s.length < 1
        fail ArgumentError, 'invalid value for "tier", the character length must be great than or equal to 1.'
      end
      @tier = tier
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lifecycle == o.lifecycle &&
          tier == o.tier &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [lifecycle, tier, type].hash
    end
  end
end
