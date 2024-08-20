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
  # Details of a rule.
  class RuleAttributes
    include BaseGenericModel

    # The scorecard name to which this rule must belong.
    attr_accessor :category

    # Creation time of the rule outcome.
    attr_accessor :created_at

    # Defines if the rule is a custom rule.
    attr_accessor :custom

    # Explanation of the rule.
    attr_accessor :description

    # If enabled, the rule is calculated as part of the score.
    attr_accessor :enabled

    # Time of the last rule outcome modification.
    attr_accessor :modified_at

    # Name of the rule.
    attr_accessor :name

    # Owner of the rule.
    attr_accessor :owner

    # The scorecard name to which this rule must belong.
    attr_accessor :scorecard_name

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'category' => :'category',
        :'created_at' => :'created_at',
        :'custom' => :'custom',
        :'description' => :'description',
        :'enabled' => :'enabled',
        :'modified_at' => :'modified_at',
        :'name' => :'name',
        :'owner' => :'owner',
        :'scorecard_name' => :'scorecard_name'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'category' => :'String',
        :'created_at' => :'Time',
        :'custom' => :'Boolean',
        :'description' => :'String',
        :'enabled' => :'Boolean',
        :'modified_at' => :'Time',
        :'name' => :'String',
        :'owner' => :'String',
        :'scorecard_name' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::RuleAttributes` initialize method"
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

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'custom')
        self.custom = attributes[:'custom']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.key?(:'scorecard_name')
        self.scorecard_name = attributes[:'scorecard_name']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          category == o.category &&
          created_at == o.created_at &&
          custom == o.custom &&
          description == o.description &&
          enabled == o.enabled &&
          modified_at == o.modified_at &&
          name == o.name &&
          owner == o.owner &&
          scorecard_name == o.scorecard_name
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [category, created_at, custom, description, enabled, modified_at, name, owner, scorecard_name].hash
    end
  end
end
