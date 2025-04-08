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
  # The maximum amount of data or number of events allowed before the quota is enforced. Can be specified in bytes or events.
  class ObservabilityPipelineQuotaProcessorLimit
    include BaseGenericModel

    # Unit for quota enforcement in bytes for data size or events for count.
    attr_reader :enforce

    # The limit for quota enforcement.
    attr_reader :limit

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'enforce' => :'enforce',
        :'limit' => :'limit'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'enforce' => :'ObservabilityPipelineQuotaProcessorLimitEnforceType',
        :'limit' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ObservabilityPipelineQuotaProcessorLimit` initialize method"
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

      if attributes.key?(:'enforce')
        self.enforce = attributes[:'enforce']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @enforce.nil?
      return false if @limit.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param enforce [Object] Object to be assigned
    # @!visibility private
    def enforce=(enforce)
      if enforce.nil?
        fail ArgumentError, 'invalid value for "enforce", enforce cannot be nil.'
      end
      @enforce = enforce
    end

    # Custom attribute writer method with validation
    # @param limit [Object] Object to be assigned
    # @!visibility private
    def limit=(limit)
      if limit.nil?
        fail ArgumentError, 'invalid value for "limit", limit cannot be nil.'
      end
      @limit = limit
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
          enforce == o.enforce &&
          limit == o.limit &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [enforce, limit, additional_properties].hash
    end
  end
end
