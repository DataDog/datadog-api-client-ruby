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
  # The Microsoft Sentinel destination.
  class CustomDestinationResponseForwardDestinationMicrosoftSentinel
    include BaseGenericModel

    # Client ID from the Datadog Azure integration.
    attr_reader :client_id

    # Azure data collection endpoint.
    attr_reader :data_collection_endpoint

    # Azure data collection rule ID.
    attr_reader :data_collection_rule_id

    # Azure stream name.
    attr_reader :stream_name

    # Tenant ID from the Datadog Azure integration.
    attr_reader :tenant_id

    # Type of the Microsoft Sentinel destination.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'client_id' => :'client_id',
        :'data_collection_endpoint' => :'data_collection_endpoint',
        :'data_collection_rule_id' => :'data_collection_rule_id',
        :'stream_name' => :'stream_name',
        :'tenant_id' => :'tenant_id',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'client_id' => :'String',
        :'data_collection_endpoint' => :'String',
        :'data_collection_rule_id' => :'String',
        :'stream_name' => :'String',
        :'tenant_id' => :'String',
        :'type' => :'CustomDestinationResponseForwardDestinationMicrosoftSentinelType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CustomDestinationResponseForwardDestinationMicrosoftSentinel` initialize method"
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

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'data_collection_endpoint')
        self.data_collection_endpoint = attributes[:'data_collection_endpoint']
      end

      if attributes.key?(:'data_collection_rule_id')
        self.data_collection_rule_id = attributes[:'data_collection_rule_id']
      end

      if attributes.key?(:'stream_name')
        self.stream_name = attributes[:'stream_name']
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @client_id.nil?
      return false if @data_collection_endpoint.nil?
      return false if @data_collection_rule_id.nil?
      return false if @stream_name.nil?
      return false if @tenant_id.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param client_id [Object] Object to be assigned
    # @!visibility private
    def client_id=(client_id)
      if client_id.nil?
        fail ArgumentError, 'invalid value for "client_id", client_id cannot be nil.'
      end
      @client_id = client_id
    end

    # Custom attribute writer method with validation
    # @param data_collection_endpoint [Object] Object to be assigned
    # @!visibility private
    def data_collection_endpoint=(data_collection_endpoint)
      if data_collection_endpoint.nil?
        fail ArgumentError, 'invalid value for "data_collection_endpoint", data_collection_endpoint cannot be nil.'
      end
      @data_collection_endpoint = data_collection_endpoint
    end

    # Custom attribute writer method with validation
    # @param data_collection_rule_id [Object] Object to be assigned
    # @!visibility private
    def data_collection_rule_id=(data_collection_rule_id)
      if data_collection_rule_id.nil?
        fail ArgumentError, 'invalid value for "data_collection_rule_id", data_collection_rule_id cannot be nil.'
      end
      @data_collection_rule_id = data_collection_rule_id
    end

    # Custom attribute writer method with validation
    # @param stream_name [Object] Object to be assigned
    # @!visibility private
    def stream_name=(stream_name)
      if stream_name.nil?
        fail ArgumentError, 'invalid value for "stream_name", stream_name cannot be nil.'
      end
      @stream_name = stream_name
    end

    # Custom attribute writer method with validation
    # @param tenant_id [Object] Object to be assigned
    # @!visibility private
    def tenant_id=(tenant_id)
      if tenant_id.nil?
        fail ArgumentError, 'invalid value for "tenant_id", tenant_id cannot be nil.'
      end
      @tenant_id = tenant_id
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
          client_id == o.client_id &&
          data_collection_endpoint == o.data_collection_endpoint &&
          data_collection_rule_id == o.data_collection_rule_id &&
          stream_name == o.stream_name &&
          tenant_id == o.tenant_id &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [client_id, data_collection_endpoint, data_collection_rule_id, stream_name, tenant_id, type, additional_properties].hash
    end
  end
end
