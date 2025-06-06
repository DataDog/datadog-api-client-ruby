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
  # A Cloud Workload Security Agent rule returned by the API
  class CloudWorkloadSecurityAgentRuleAttributes
    include BaseGenericModel

    # The array of actions the rule can perform if triggered
    attr_accessor :actions

    # The version of the Agent
    attr_accessor :agent_constraint

    # The blocking policies that the rule belongs to
    attr_accessor :blocking

    # The category of the Agent rule
    attr_accessor :category

    # The ID of the user who created the rule
    attr_accessor :creation_author_uu_id

    # When the Agent rule was created, timestamp in milliseconds
    attr_accessor :creation_date

    # The attributes of the user who created the Agent rule
    attr_accessor :creator

    # Whether the rule is included by default
    attr_accessor :default_rule

    # The description of the Agent rule
    attr_accessor :description

    # The disabled policies that the rule belongs to
    attr_accessor :disabled

    # Whether the Agent rule is enabled
    attr_accessor :enabled

    # The SECL expression of the Agent rule
    attr_accessor :expression

    # The platforms the Agent rule is supported on
    attr_accessor :filters

    # The monitoring policies that the rule belongs to
    attr_accessor :monitoring

    # The name of the Agent rule
    attr_accessor :name

    # The list of product tags associated with the rule
    attr_accessor :product_tags

    # The ID of the user who updated the rule
    attr_accessor :update_author_uu_id

    # Timestamp in milliseconds when the Agent rule was last updated
    attr_accessor :update_date

    # When the Agent rule was last updated, timestamp in milliseconds
    attr_accessor :updated_at

    # The attributes of the user who last updated the Agent rule
    attr_accessor :updater

    # The version of the Agent rule
    attr_accessor :version

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'actions' => :'actions',
        :'agent_constraint' => :'agentConstraint',
        :'blocking' => :'blocking',
        :'category' => :'category',
        :'creation_author_uu_id' => :'creationAuthorUuId',
        :'creation_date' => :'creationDate',
        :'creator' => :'creator',
        :'default_rule' => :'defaultRule',
        :'description' => :'description',
        :'disabled' => :'disabled',
        :'enabled' => :'enabled',
        :'expression' => :'expression',
        :'filters' => :'filters',
        :'monitoring' => :'monitoring',
        :'name' => :'name',
        :'product_tags' => :'product_tags',
        :'update_author_uu_id' => :'updateAuthorUuId',
        :'update_date' => :'updateDate',
        :'updated_at' => :'updatedAt',
        :'updater' => :'updater',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'actions' => :'Array<CloudWorkloadSecurityAgentRuleAction>',
        :'agent_constraint' => :'String',
        :'blocking' => :'Array<String>',
        :'category' => :'String',
        :'creation_author_uu_id' => :'String',
        :'creation_date' => :'Integer',
        :'creator' => :'CloudWorkloadSecurityAgentRuleCreatorAttributes',
        :'default_rule' => :'Boolean',
        :'description' => :'String',
        :'disabled' => :'Array<String>',
        :'enabled' => :'Boolean',
        :'expression' => :'String',
        :'filters' => :'Array<String>',
        :'monitoring' => :'Array<String>',
        :'name' => :'String',
        :'product_tags' => :'Array<String>',
        :'update_author_uu_id' => :'String',
        :'update_date' => :'Integer',
        :'updated_at' => :'Integer',
        :'updater' => :'CloudWorkloadSecurityAgentRuleUpdaterAttributes',
        :'version' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'actions',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleAttributes` initialize method"
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

      if attributes.key?(:'actions')
        if (value = attributes[:'actions']).is_a?(Array)
          self.actions = value
        end
      end

      if attributes.key?(:'agent_constraint')
        self.agent_constraint = attributes[:'agent_constraint']
      end

      if attributes.key?(:'blocking')
        if (value = attributes[:'blocking']).is_a?(Array)
          self.blocking = value
        end
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'creation_author_uu_id')
        self.creation_author_uu_id = attributes[:'creation_author_uu_id']
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

      if attributes.key?(:'disabled')
        if (value = attributes[:'disabled']).is_a?(Array)
          self.disabled = value
        end
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'expression')
        self.expression = attributes[:'expression']
      end

      if attributes.key?(:'filters')
        if (value = attributes[:'filters']).is_a?(Array)
          self.filters = value
        end
      end

      if attributes.key?(:'monitoring')
        if (value = attributes[:'monitoring']).is_a?(Array)
          self.monitoring = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'product_tags')
        if (value = attributes[:'product_tags']).is_a?(Array)
          self.product_tags = value
        end
      end

      if attributes.key?(:'update_author_uu_id')
        self.update_author_uu_id = attributes[:'update_author_uu_id']
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
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
          actions == o.actions &&
          agent_constraint == o.agent_constraint &&
          blocking == o.blocking &&
          category == o.category &&
          creation_author_uu_id == o.creation_author_uu_id &&
          creation_date == o.creation_date &&
          creator == o.creator &&
          default_rule == o.default_rule &&
          description == o.description &&
          disabled == o.disabled &&
          enabled == o.enabled &&
          expression == o.expression &&
          filters == o.filters &&
          monitoring == o.monitoring &&
          name == o.name &&
          product_tags == o.product_tags &&
          update_author_uu_id == o.update_author_uu_id &&
          update_date == o.update_date &&
          updated_at == o.updated_at &&
          updater == o.updater &&
          version == o.version &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [actions, agent_constraint, blocking, category, creation_author_uu_id, creation_date, creator, default_rule, description, disabled, enabled, expression, filters, monitoring, name, product_tags, update_author_uu_id, update_date, updated_at, updater, version, additional_properties].hash
    end
  end
end
