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
  # Attributes of the created user.
  class ServiceAccountCreateAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The email of the user.
    attr_reader :email

    # The name of the user.
    attr_accessor :name

    # Whether the user is a service account. Must be true.
    attr_reader :service_account

    # The title of the user.
    attr_accessor :title

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'email' => :'email',
        :'name' => :'name',
        :'service_account' => :'service_account',
        :'title' => :'title'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'email' => :'String',
        :'name' => :'String',
        :'service_account' => :'Boolean',
        :'title' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ServiceAccountCreateAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::ServiceAccountCreateAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'service_account')
        self.service_account = attributes[:'service_account']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @email.nil?
      return false if @service_account.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param email [Object] Object to be assigned
    # @!visibility private
    def email=(email)
      if email.nil?
        fail ArgumentError, 'invalid value for "email", email cannot be nil.'
      end
      @email = email
    end

    # Custom attribute writer method with validation
    # @param service_account [Object] Object to be assigned
    # @!visibility private
    def service_account=(service_account)
      if service_account.nil?
        fail ArgumentError, 'invalid value for "service_account", service_account cannot be nil.'
      end
      @service_account = service_account
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email == o.email &&
          name == o.name &&
          service_account == o.service_account &&
          title == o.title
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:email, :name, :service_account, :title].hash
    end
  end
end
