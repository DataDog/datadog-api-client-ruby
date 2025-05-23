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
  # Configuration for enabling TLS encryption between the pipeline component and external services.
  class ObservabilityPipelineTls
    include BaseGenericModel

    # Path to the Certificate Authority (CA) file used to validate the server’s TLS certificate.
    attr_accessor :ca_file

    # Path to the TLS client certificate file used to authenticate the pipeline component with upstream or downstream services.
    attr_reader :crt_file

    # Path to the private key file associated with the TLS client certificate. Used for mutual TLS authentication.
    attr_accessor :key_file

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'ca_file' => :'ca_file',
        :'crt_file' => :'crt_file',
        :'key_file' => :'key_file'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'ca_file' => :'String',
        :'crt_file' => :'String',
        :'key_file' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ObservabilityPipelineTls` initialize method"
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

      if attributes.key?(:'ca_file')
        self.ca_file = attributes[:'ca_file']
      end

      if attributes.key?(:'crt_file')
        self.crt_file = attributes[:'crt_file']
      end

      if attributes.key?(:'key_file')
        self.key_file = attributes[:'key_file']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @crt_file.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param crt_file [Object] Object to be assigned
    # @!visibility private
    def crt_file=(crt_file)
      if crt_file.nil?
        fail ArgumentError, 'invalid value for "crt_file", crt_file cannot be nil.'
      end
      @crt_file = crt_file
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
          ca_file == o.ca_file &&
          crt_file == o.crt_file &&
          key_file == o.key_file &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [ca_file, crt_file, key_file, additional_properties].hash
    end
  end
end
