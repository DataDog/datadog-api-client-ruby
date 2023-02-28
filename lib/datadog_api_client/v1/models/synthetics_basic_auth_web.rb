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
  # Object to handle basic authentication when performing the test.
  class SyntheticsBasicAuthWeb
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Password to use for the basic authentication.
    attr_reader :password

    # The type of basic authentication to use when performing the test.
    attr_accessor :type

    # Username to use for the basic authentication.
    attr_reader :username

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'password' => :'password',
        :'type' => :'type',
        :'username' => :'username'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'password' => :'String',
        :'type' => :'SyntheticsBasicAuthWebType',
        :'username' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsBasicAuthWeb` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsBasicAuthWeb`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @password.nil?
      return false if @username.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param password [Object] Object to be assigned
    # @!visibility private
    def password=(password)
      if password.nil?
        fail ArgumentError, 'invalid value for "password", password cannot be nil.'
      end
      @password = password
    end

    # Custom attribute writer method with validation
    # @param username [Object] Object to be assigned
    # @!visibility private
    def username=(username)
      if username.nil?
        fail ArgumentError, 'invalid value for "username", username cannot be nil.'
      end
      @username = username
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          password == o.password &&
          type == o.type &&
          username == o.username
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:password, :type, :username].hash
    end
  end
end
