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
  # Configuration object for a Synthetic browser test.
  class SyntheticsBrowserTestConfig
    include BaseGenericModel

    # Array of assertions used for the test.
    attr_reader :assertions

    # Array of variables used for the test.
    attr_accessor :config_variables

    # Object describing the Synthetic test request.
    attr_reader :request

    # Cookies to be used for the request, using the [Set-Cookie](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie) syntax.
    attr_accessor :set_cookie

    # Array of variables used for the test steps.
    attr_accessor :variables

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'assertions' => :'assertions',
        :'config_variables' => :'configVariables',
        :'request' => :'request',
        :'set_cookie' => :'setCookie',
        :'variables' => :'variables'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'assertions' => :'Array<SyntheticsAssertion>',
        :'config_variables' => :'Array<SyntheticsConfigVariable>',
        :'request' => :'SyntheticsTestRequest',
        :'set_cookie' => :'String',
        :'variables' => :'Array<SyntheticsBrowserVariable>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsBrowserTestConfig` initialize method"
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

      if attributes.key?(:'assertions')
        if (value = attributes[:'assertions']).is_a?(Array)
          self.assertions = value
        end
      end

      if attributes.key?(:'config_variables')
        if (value = attributes[:'config_variables']).is_a?(Array)
          self.config_variables = value
        end
      end

      if attributes.key?(:'request')
        self.request = attributes[:'request']
      end

      if attributes.key?(:'set_cookie')
        self.set_cookie = attributes[:'set_cookie']
      end

      if attributes.key?(:'variables')
        if (value = attributes[:'variables']).is_a?(Array)
          self.variables = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @assertions.nil?
      return false if @request.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param assertions [Object] Object to be assigned
    # @!visibility private
    def assertions=(assertions)
      if assertions.nil?
        fail ArgumentError, 'invalid value for "assertions", assertions cannot be nil.'
      end
      @assertions = assertions
    end

    # Custom attribute writer method with validation
    # @param request [Object] Object to be assigned
    # @!visibility private
    def request=(request)
      if request.nil?
        fail ArgumentError, 'invalid value for "request", request cannot be nil.'
      end
      @request = request
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
          assertions == o.assertions &&
          config_variables == o.config_variables &&
          request == o.request &&
          set_cookie == o.set_cookie &&
          variables == o.variables &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [assertions, config_variables, request, set_cookie, variables, additional_properties].hash
    end
  end
end
