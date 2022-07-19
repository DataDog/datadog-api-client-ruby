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
  # Object containing the options for a Synthetic test as a monitor
  # (for example, renotification).
  class SyntheticsTestOptionsMonitorOptions
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Time interval before renotifying if the test is still failing
    # (in minutes).
    attr_accessor :renotify_interval

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'renotify_interval' => :'renotify_interval'
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
        :'renotify_interval' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'renotify_interval')
        self.renotify_interval = attributes[:'renotify_interval']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@renotify_interval.nil? && @renotify_interval > 1440
      return false if !@renotify_interval.nil? && @renotify_interval < 0
      true
    end

    # Custom attribute writer method with validation
    # @param renotify_interval [Object] Object to be assigned
    # @!visibility private
    def renotify_interval=(renotify_interval)
      if !renotify_interval.nil? && renotify_interval > 1440
        fail ArgumentError, 'invalid value for "renotify_interval", must be smaller than or equal to 1440.'
      end
      if !renotify_interval.nil? && renotify_interval < 0
        fail ArgumentError, 'invalid value for "renotify_interval", must be greater than or equal to 0.'
      end
      @renotify_interval = renotify_interval
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          renotify_interval == o.renotify_interval
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
      [renotify_interval].hash
    end
  end
end
