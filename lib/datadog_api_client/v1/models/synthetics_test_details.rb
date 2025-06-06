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
  # Object containing details about your Synthetic test.
  class SyntheticsTestDetails
    include BaseGenericModel

    # Configuration object for a Synthetic test.
    attr_accessor :config

    # Object describing the creator of the shared element.
    attr_accessor :creator

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

    # The test public ID.
    attr_accessor :public_id

    # Define whether you want to start (`live`) or pause (`paused`) a
    # Synthetic test.
    attr_accessor :status

    # For browser test, the steps of the test.
    attr_accessor :steps

    # The subtype of the Synthetic API test, `http`, `ssl`, `tcp`,
    # `dns`, `icmp`, `udp`, `websocket`, `grpc` or `multi`.
    attr_accessor :subtype

    # Array of tags attached to the test.
    attr_accessor :tags

    # Type of the Synthetic test, either `api` or `browser`.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'config' => :'config',
        :'creator' => :'creator',
        :'locations' => :'locations',
        :'message' => :'message',
        :'monitor_id' => :'monitor_id',
        :'name' => :'name',
        :'options' => :'options',
        :'public_id' => :'public_id',
        :'status' => :'status',
        :'steps' => :'steps',
        :'subtype' => :'subtype',
        :'tags' => :'tags',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'config' => :'SyntheticsTestConfig',
        :'creator' => :'Creator',
        :'locations' => :'Array<String>',
        :'message' => :'String',
        :'monitor_id' => :'Integer',
        :'name' => :'String',
        :'options' => :'SyntheticsTestOptions',
        :'public_id' => :'String',
        :'status' => :'SyntheticsTestPauseStatus',
        :'steps' => :'Array<SyntheticsStep>',
        :'subtype' => :'SyntheticsTestDetailsSubType',
        :'tags' => :'Array<String>',
        :'type' => :'SyntheticsTestDetailsType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsTestDetails` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'config')
        self.config = attributes[:'config']
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
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
      end
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          config == o.config &&
          creator == o.creator &&
          locations == o.locations &&
          message == o.message &&
          monitor_id == o.monitor_id &&
          name == o.name &&
          options == o.options &&
          public_id == o.public_id &&
          status == o.status &&
          steps == o.steps &&
          subtype == o.subtype &&
          tags == o.tags &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [config, creator, locations, message, monitor_id, name, options, public_id, status, steps, subtype, tags, type, additional_properties].hash
    end
  end
end
