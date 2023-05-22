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
  # Object containing details about a Synthetic browser test.
  class SyntheticsBrowserTest
    include BaseGenericModel

    # Configuration object for a Synthetic browser test.
    attr_reader :config

    # Array of locations used to run the test.
    attr_reader :locations

    # Notification message associated with the test. Message can either be text or an empty string.
    attr_reader :message

    # The associated monitor ID.
    attr_accessor :monitor_id

    # Name of the test.
    attr_reader :name

    # Object describing the extra options for a Synthetic test.
    attr_reader :options

    # The public ID of the test.
    attr_accessor :public_id

    # Define whether you want to start (`live`) or pause (`paused`) a
    # Synthetic test.
    attr_accessor :status

    # Array of steps for the test.
    attr_accessor :steps

    # Array of tags attached to the test.
    attr_accessor :tags

    # Type of the Synthetic test, `browser`.
    attr_reader :type

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
        :'steps' => :'steps',
        :'tags' => :'tags',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'config' => :'SyntheticsBrowserTestConfig',
        :'locations' => :'Array<String>',
        :'message' => :'String',
        :'monitor_id' => :'Integer',
        :'name' => :'String',
        :'options' => :'SyntheticsTestOptions',
        :'public_id' => :'String',
        :'status' => :'SyntheticsTestPauseStatus',
        :'steps' => :'Array<SyntheticsStep>',
        :'tags' => :'Array<String>',
        :'type' => :'SyntheticsBrowserTestType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsBrowserTest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsBrowserTest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'steps')
        if (value = attributes[:'steps']).is_a?(Array)
          self.steps = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
          steps == o.steps &&
          tags == o.tags &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [config, locations, message, monitor_id, name, options, public_id, status, steps, tags, type].hash
    end
  end
end
