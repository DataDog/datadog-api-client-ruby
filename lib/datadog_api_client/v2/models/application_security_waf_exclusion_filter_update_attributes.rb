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
  # Attributes for updating a WAF exclusion filter.
  class ApplicationSecurityWafExclusionFilterUpdateAttributes
    include BaseGenericModel

    # A description for the exclusion filter.
    attr_reader :description

    # Indicates whether the exclusion filter is enabled.
    attr_reader :enabled

    # The client IP addresses matched by the exclusion filter (CIDR notation is supported).
    attr_accessor :ip_list

    # The action taken when the exclusion filter matches. When set to `monitor`, security traces are emitted but the requests are not blocked. By default, security traces are not emitted and the requests are not blocked.
    attr_accessor :on_match

    # A list of parameters matched by the exclusion filter in the HTTP query string and HTTP request body. Nested parameters can be matched by joining fields with a dot character.
    attr_accessor :parameters

    # The HTTP path glob expression matched by the exclusion filter.
    attr_accessor :path_glob

    # The WAF rules targeted by the exclusion filter.
    attr_accessor :rules_target

    # The services where the exclusion filter is deployed.
    attr_accessor :scope

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'description' => :'description',
        :'enabled' => :'enabled',
        :'ip_list' => :'ip_list',
        :'on_match' => :'on_match',
        :'parameters' => :'parameters',
        :'path_glob' => :'path_glob',
        :'rules_target' => :'rules_target',
        :'scope' => :'scope'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'description' => :'String',
        :'enabled' => :'Boolean',
        :'ip_list' => :'Array<String>',
        :'on_match' => :'ApplicationSecurityWafExclusionFilterOnMatch',
        :'parameters' => :'Array<String>',
        :'path_glob' => :'String',
        :'rules_target' => :'Array<ApplicationSecurityWafExclusionFilterRulesTarget>',
        :'scope' => :'Array<ApplicationSecurityWafExclusionFilterScope>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterUpdateAttributes` initialize method"
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

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'ip_list')
        if (value = attributes[:'ip_list']).is_a?(Array)
          self.ip_list = value
        end
      end

      if attributes.key?(:'on_match')
        self.on_match = attributes[:'on_match']
      end

      if attributes.key?(:'parameters')
        if (value = attributes[:'parameters']).is_a?(Array)
          self.parameters = value
        end
      end

      if attributes.key?(:'path_glob')
        self.path_glob = attributes[:'path_glob']
      end

      if attributes.key?(:'rules_target')
        if (value = attributes[:'rules_target']).is_a?(Array)
          self.rules_target = value
        end
      end

      if attributes.key?(:'scope')
        if (value = attributes[:'scope']).is_a?(Array)
          self.scope = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @description.nil?
      return false if @enabled.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param description [Object] Object to be assigned
    # @!visibility private
    def description=(description)
      if description.nil?
        fail ArgumentError, 'invalid value for "description", description cannot be nil.'
      end
      @description = description
    end

    # Custom attribute writer method with validation
    # @param enabled [Object] Object to be assigned
    # @!visibility private
    def enabled=(enabled)
      if enabled.nil?
        fail ArgumentError, 'invalid value for "enabled", enabled cannot be nil.'
      end
      @enabled = enabled
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
          description == o.description &&
          enabled == o.enabled &&
          ip_list == o.ip_list &&
          on_match == o.on_match &&
          parameters == o.parameters &&
          path_glob == o.path_glob &&
          rules_target == o.rules_target &&
          scope == o.scope &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [description, enabled, ip_list, on_match, parameters, path_glob, rules_target, scope, additional_properties].hash
    end
  end
end
