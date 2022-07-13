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
  # Object containing details about a Synthetic API test.
  class SyntheticsAPITest
    include DatadogAPIClient::BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Configuration object for a Synthetic API test.
    attr_accessor :config

    # Array of locations used to run the test.
    attr_accessor :locations

    # Notification message associated with the test.
    attr_accessor :message

    # The associated monitor ID.
    attr_accessor :monitor_id

    # Name of the test.
    attr_accessor :name

    # Object describing the extra options for a Synthetic test.
    attr_accessor :options

    # The public ID for the test.
    attr_accessor :public_id

    # Define whether you want to start (`live`) or pause (`paused`) a
    # Synthetic test.
    attr_accessor :status

    # The subtype of the Synthetic API test, `http`, `ssl`, `tcp`,
    # `dns`, `icmp`, `udp`, `websocket`, `grpc` or `multi`.
    attr_accessor :subtype

    # Array of tags attached to the test.
    attr_accessor :tags

    # Type of the Synthetic test, `api`.
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'config' => :'config',
        :'locations' => :'locations',
        :'message' => :'message',
        :'monitor_id' => :'monitor_id',
        :'name' => :'name',
        :'options' => :'options',
        :'public_id' => :'public_id',
        :'status' => :'status',
        :'subtype' => :'subtype',
        :'tags' => :'tags',
        :'type' => :'type'
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
        :'config' => :'SyntheticsAPITestConfig',
        :'locations' => :'Array<String>',
        :'message' => :'String',
        :'monitor_id' => :'Integer',
        :'name' => :'String',
        :'options' => :'SyntheticsTestOptions',
        :'public_id' => :'String',
        :'status' => :'SyntheticsTestPauseStatus',
        :'subtype' => :'SyntheticsTestDetailsSubType',
        :'tags' => :'Array<String>',
        :'type' => :'SyntheticsAPITestType'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsAPITest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsAPITest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'config')
        self.config = attributes[:'config']
      end

      if attributes.key?(:'locations')
        if (value = attributes[:'locations']).is_a?(Array)
          self.locations = value
        end
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'monitor_id')
        self.monitor_id = attributes[:'monitor_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'subtype')
        self.subtype = attributes[:'subtype']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'api'
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @config.nil?
      return false if @locations.nil?
      return false if @message.nil?
      return false if @name.nil?
      return false if @options.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param config [Object] Object to be assigned
    # @!visibility private
    def config=(config)
      if config.nil?
        fail ArgumentError, 'invalid value for "config", config cannot be nil.'
      end
      @config = config
    end

    # Custom attribute writer method with validation
    # @param locations [Object] Object to be assigned
    # @!visibility private
    def locations=(locations)
      if locations.nil?
        fail ArgumentError, 'invalid value for "locations", locations cannot be nil.'
      end
      @locations = locations
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
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param options [Object] Object to be assigned
    # @!visibility private
    def options=(options)
      if options.nil?
        fail ArgumentError, 'invalid value for "options", options cannot be nil.'
      end
      @options = options
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
          config == o.config &&
          locations == o.locations &&
          message == o.message &&
          monitor_id == o.monitor_id &&
          name == o.name &&
          options == o.options &&
          public_id == o.public_id &&
          status == o.status &&
          subtype == o.subtype &&
          tags == o.tags &&
          type == o.type
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
      [config, locations, message, monitor_id, name, options, public_id, status, subtype, tags, type].hash
    end
  end
end
