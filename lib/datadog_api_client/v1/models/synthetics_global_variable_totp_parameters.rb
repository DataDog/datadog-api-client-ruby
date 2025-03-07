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
  # Parameters for the TOTP/MFA variable
  class SyntheticsGlobalVariableTOTPParameters
    include BaseGenericModel

    # Number of digits for the OTP code.
    attr_reader :digits

    # Interval for which to refresh the token (in seconds).
    attr_reader :refresh_interval

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'digits' => :'digits',
        :'refresh_interval' => :'refresh_interval'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'digits' => :'Integer',
        :'refresh_interval' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsGlobalVariableTOTPParameters` initialize method"
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

      if attributes.key?(:'digits')
        self.digits = attributes[:'digits']
      end

      if attributes.key?(:'refresh_interval')
        self.refresh_interval = attributes[:'refresh_interval']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@digits.nil? && @digits > 10
      return false if !@digits.nil? && @digits < 4
      return false if !@refresh_interval.nil? && @refresh_interval > 999
      return false if !@refresh_interval.nil? && @refresh_interval < 0
      true
    end

    # Custom attribute writer method with validation
    # @param digits [Object] Object to be assigned
    # @!visibility private
    def digits=(digits)
      if !digits.nil? && digits > 10
        fail ArgumentError, 'invalid value for "digits", must be smaller than or equal to 10.'
      end
      if !digits.nil? && digits < 4
        fail ArgumentError, 'invalid value for "digits", must be greater than or equal to 4.'
      end
      @digits = digits
    end

    # Custom attribute writer method with validation
    # @param refresh_interval [Object] Object to be assigned
    # @!visibility private
    def refresh_interval=(refresh_interval)
      if !refresh_interval.nil? && refresh_interval > 999
        fail ArgumentError, 'invalid value for "refresh_interval", must be smaller than or equal to 999.'
      end
      if !refresh_interval.nil? && refresh_interval < 0
        fail ArgumentError, 'invalid value for "refresh_interval", must be greater than or equal to 0.'
      end
      @refresh_interval = refresh_interval
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
          digits == o.digits &&
          refresh_interval == o.refresh_interval &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [digits, refresh_interval, additional_properties].hash
    end
  end
end
