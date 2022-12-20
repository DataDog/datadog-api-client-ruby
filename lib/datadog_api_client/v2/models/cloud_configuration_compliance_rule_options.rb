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
  # Options for cloud_configuration rules.
  # Fields `resourceType` and `regoRule` are mandatory when managing custom `cloud_configuration` rules.
  class CloudConfigurationComplianceRuleOptions
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Whether the rule is a complex one.
    # Must be set to true if `regoRule.resourceTypes` contains more than one item. Defaults to false.
    #
    attr_accessor :complex_rule

    # Rule details.
    attr_accessor :rego_rule

    # Main resource type to be checked by the rule. It should be specified again in `regoRule.resourceTypes`.
    #
    attr_accessor :resource_type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'complex_rule' => :'complexRule',
        :'rego_rule' => :'regoRule',
        :'resource_type' => :'resourceType'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'complex_rule' => :'Boolean',
        :'rego_rule' => :'CloudConfigurationRegoRule',
        :'resource_type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CloudConfigurationComplianceRuleOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::CloudConfigurationComplianceRuleOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'complex_rule')
        self.complex_rule = attributes[:'complex_rule']
      end

      if attributes.key?(:'rego_rule')
        self.rego_rule = attributes[:'rego_rule']
      end

      if attributes.key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          complex_rule == o.complex_rule &&
          rego_rule == o.rego_rule &&
          resource_type == o.resource_type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [complex_rule, rego_rule, resource_type].hash
    end
  end
end
