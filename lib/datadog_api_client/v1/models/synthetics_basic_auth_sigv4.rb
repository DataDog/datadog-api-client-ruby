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
  # Object to handle `SIGV4` authentication when performing the test.
  class SyntheticsBasicAuthSigv4
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Access key for the `SIGV4` authentication.
    attr_reader :access_key

    # Region for the `SIGV4` authentication.
    attr_accessor :region

    # Secret key for the `SIGV4` authentication.
    attr_reader :secret_key

    # Service name for the `SIGV4` authentication.
    attr_accessor :service_name

    # Session token for the `SIGV4` authentication.
    attr_accessor :session_token

    # The type of authentication to use when performing the test.
    attr_reader :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'access_key' => :'accessKey',
        :'region' => :'region',
        :'secret_key' => :'secretKey',
        :'service_name' => :'serviceName',
        :'session_token' => :'sessionToken',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'access_key' => :'String',
        :'region' => :'String',
        :'secret_key' => :'String',
        :'service_name' => :'String',
        :'session_token' => :'String',
        :'type' => :'SyntheticsBasicAuthSigv4Type'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsBasicAuthSigv4` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsBasicAuthSigv4`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'access_key')
        self.access_key = attributes[:'access_key']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'secret_key')
        self.secret_key = attributes[:'secret_key']
      end

      if attributes.key?(:'service_name')
        self.service_name = attributes[:'service_name']
      end

      if attributes.key?(:'session_token')
        self.session_token = attributes[:'session_token']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @access_key.nil?
      return false if @secret_key.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param access_key [Object] Object to be assigned
    # @!visibility private
    def access_key=(access_key)
      if access_key.nil?
        fail ArgumentError, 'invalid value for "access_key", access_key cannot be nil.'
      end
      @access_key = access_key
    end

    # Custom attribute writer method with validation
    # @param secret_key [Object] Object to be assigned
    # @!visibility private
    def secret_key=(secret_key)
      if secret_key.nil?
        fail ArgumentError, 'invalid value for "secret_key", secret_key cannot be nil.'
      end
      @secret_key = secret_key
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access_key == o.access_key &&
          region == o.region &&
          secret_key == o.secret_key &&
          service_name == o.service_name &&
          session_token == o.session_token &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [access_key, region, secret_key, service_name, session_token, type].hash
    end
  end
end
