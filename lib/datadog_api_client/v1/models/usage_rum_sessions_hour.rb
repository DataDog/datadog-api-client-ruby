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
  # Number of RUM Sessions recorded for each hour for a given organization.
  class UsageRumSessionsHour
    include DatadogAPIClient::BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The hour for the usage.
    attr_accessor :hour

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # Contains the number of RUM Replay Sessions (data available beginning November 1, 2021).
    attr_accessor :replay_session_count

    # Contains the number of browser RUM Lite Sessions.
    attr_accessor :session_count

    # Contains the number of mobile RUM Sessions on Android (data available beginning December 1, 2020).
    attr_accessor :session_count_android

    # Contains the number of mobile RUM Sessions on iOS (data available beginning December 1, 2020).
    attr_accessor :session_count_ios

    # Contains the number of mobile RUM Sessions on React Native (data available beginning May 1, 2022).
    attr_accessor :session_count_reactnative

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'hour' => :'hour',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id',
        :'replay_session_count' => :'replay_session_count',
        :'session_count' => :'session_count',
        :'session_count_android' => :'session_count_android',
        :'session_count_ios' => :'session_count_ios',
        :'session_count_reactnative' => :'session_count_reactnative'
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
        :'hour' => :'Time',
        :'org_name' => :'String',
        :'public_id' => :'String',
        :'replay_session_count' => :'Integer',
        :'session_count' => :'Integer',
        :'session_count_android' => :'Integer',
        :'session_count_ios' => :'Integer',
        :'session_count_reactnative' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'session_count',
        :'session_count_android',
        :'session_count_ios',
        :'session_count_reactnative',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageRumSessionsHour` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageRumSessionsHour`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'hour')
        self.hour = attributes[:'hour']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'replay_session_count')
        self.replay_session_count = attributes[:'replay_session_count']
      end

      if attributes.key?(:'session_count')
        self.session_count = attributes[:'session_count']
      end

      if attributes.key?(:'session_count_android')
        self.session_count_android = attributes[:'session_count_android']
      end

      if attributes.key?(:'session_count_ios')
        self.session_count_ios = attributes[:'session_count_ios']
      end

      if attributes.key?(:'session_count_reactnative')
        self.session_count_reactnative = attributes[:'session_count_reactnative']
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
          hour == o.hour &&
          org_name == o.org_name &&
          public_id == o.public_id &&
          replay_session_count == o.replay_session_count &&
          session_count == o.session_count &&
          session_count_android == o.session_count_android &&
          session_count_ios == o.session_count_ios &&
          session_count_reactnative == o.session_count_reactnative
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
      [hour, org_name, public_id, replay_session_count, session_count, session_count_android, session_count_ios, session_count_reactnative].hash
    end
  end
end
