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
  # A Cloud Workload Security Agent rule returned by the API.
  class CloudWorkloadSecurityAgentRuleAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The category of the Agent rule.
    attr_accessor :category

    # When the Agent rule was created, timestamp in milliseconds.
    attr_accessor :creation_date

    # The attributes of the user who created the Agent rule.
    attr_accessor :creator

    # Whether the rule is included by default.
    attr_accessor :default_rule

    # The description of the Agent rule.
    attr_accessor :description

    # Whether the Agent rule is enabled.
    attr_accessor :enabled

    # The SECL expression of the Agent rule.
    attr_accessor :expression

    # The name of the Agent rule.
    attr_accessor :name

    # When the Agent rule was last updated, timestamp in milliseconds.
    attr_accessor :updated_at

    # The attributes of the user who last updated the Agent rule.
    attr_accessor :updater

    # The version of the Agent rule.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'category' => :'category',
        :'creation_date' => :'creationDate',
        :'creator' => :'creator',
        :'default_rule' => :'defaultRule',
        :'description' => :'description',
        :'enabled' => :'enabled',
        :'expression' => :'expression',
        :'name' => :'name',
        :'updated_at' => :'updatedAt',
        :'updater' => :'updater',
        :'version' => :'version'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'category' => :'String',
        :'creation_date' => :'Integer',
        :'creator' => :'CloudWorkloadSecurityAgentRuleCreatorAttributes',
        :'default_rule' => :'Boolean',
        :'description' => :'String',
        :'enabled' => :'Boolean',
        :'expression' => :'String',
        :'name' => :'String',
        :'updated_at' => :'Integer',
        :'updater' => :'CloudWorkloadSecurityAgentRuleUpdaterAttributes',
        :'version' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'creation_date')
        self.creation_date = attributes[:'creation_date']
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.key?(:'default_rule')
        self.default_rule = attributes[:'default_rule']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'expression')
        self.expression = attributes[:'expression']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'updater')
        self.updater = attributes[:'updater']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
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
          category == o.category &&
          creation_date == o.creation_date &&
          creator == o.creator &&
          default_rule == o.default_rule &&
          description == o.description &&
          enabled == o.enabled &&
          expression == o.expression &&
          name == o.name &&
          updated_at == o.updated_at &&
          updater == o.updater &&
          version == o.version
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [category, creation_date, creator, default_rule, description, enabled, expression, name, updated_at, updater, version].hash
    end
  end
end
