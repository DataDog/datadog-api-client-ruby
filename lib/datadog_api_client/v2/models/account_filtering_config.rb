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
  # The account filtering configuration.
  class AccountFilteringConfig
    include BaseGenericModel

    # The AWS account IDs to be excluded from your billing dataset. This field is used when `include_new_accounts` is `true`.
    attr_accessor :excluded_accounts

    # Whether or not to automatically include new member accounts by default in your billing dataset.
    attr_accessor :include_new_accounts

    # The AWS account IDs to be included in your billing dataset. This field is used when `include_new_accounts` is `false`.
    attr_accessor :included_accounts

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'excluded_accounts' => :'excluded_accounts',
        :'include_new_accounts' => :'include_new_accounts',
        :'included_accounts' => :'included_accounts'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'excluded_accounts' => :'Array<String>',
        :'include_new_accounts' => :'Boolean',
        :'included_accounts' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::AccountFilteringConfig` initialize method"
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

      if attributes.key?(:'excluded_accounts')
        if (value = attributes[:'excluded_accounts']).is_a?(Array)
          self.excluded_accounts = value
        end
      end

      if attributes.key?(:'include_new_accounts')
        self.include_new_accounts = attributes[:'include_new_accounts']
      end

      if attributes.key?(:'included_accounts')
        if (value = attributes[:'included_accounts']).is_a?(Array)
          self.included_accounts = value
        end
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
          excluded_accounts == o.excluded_accounts &&
          include_new_accounts == o.include_new_accounts &&
          included_accounts == o.included_accounts &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [excluded_accounts, include_new_accounts, included_accounts, additional_properties].hash
    end
  end
end
