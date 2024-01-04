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
  # Rule.
  class SecurityMonitoringStandardRuleResponse
    include BaseGenericModel

    # Cases for generating signals.
    attr_accessor :cases

    # How to generate compliance signals. Useful for cloud_configuration rules only.
    attr_accessor :compliance_signal_options

    # When the rule was created, timestamp in milliseconds.
    attr_accessor :created_at

    # User ID of the user who created the rule.
    attr_accessor :creation_author_id

    # When the rule will be deprecated, timestamp in milliseconds.
    attr_accessor :deprecation_date

    # Additional queries to filter matched events before they are processed.
    attr_accessor :filters

    # Whether the notifications include the triggering group-by values in their title.
    attr_accessor :has_extended_title

    # The ID of the rule.
    attr_accessor :id

    # Whether the rule is included by default.
    attr_accessor :is_default

    # Whether the rule has been deleted.
    attr_accessor :is_deleted

    # Whether the rule is enabled.
    attr_accessor :is_enabled

    # Message for generated signals.
    attr_accessor :message

    # The name of the rule.
    attr_accessor :name

    # Options on rules.
    attr_accessor :options

    # Queries for selecting logs which are part of the rule.
    attr_accessor :queries

    # Tags for generated signals.
    attr_accessor :tags

    # Cases for generating signals from third party rules. Only available for third party rules.
    attr_accessor :third_party_cases

    # The rule type.
    attr_accessor :type

    # User ID of the user who updated the rule.
    attr_accessor :update_author_id

    # The version of the rule.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cases' => :'cases',
        :'compliance_signal_options' => :'complianceSignalOptions',
        :'created_at' => :'createdAt',
        :'creation_author_id' => :'creationAuthorId',
        :'deprecation_date' => :'deprecationDate',
        :'filters' => :'filters',
        :'has_extended_title' => :'hasExtendedTitle',
        :'id' => :'id',
        :'is_default' => :'isDefault',
        :'is_deleted' => :'isDeleted',
        :'is_enabled' => :'isEnabled',
        :'message' => :'message',
        :'name' => :'name',
        :'options' => :'options',
        :'queries' => :'queries',
        :'tags' => :'tags',
        :'third_party_cases' => :'thirdPartyCases',
        :'type' => :'type',
        :'update_author_id' => :'updateAuthorId',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'cases' => :'Array<SecurityMonitoringRuleCase>',
        :'compliance_signal_options' => :'CloudConfigurationRuleComplianceSignalOptions',
        :'created_at' => :'Integer',
        :'creation_author_id' => :'Integer',
        :'deprecation_date' => :'Integer',
        :'filters' => :'Array<SecurityMonitoringFilter>',
        :'has_extended_title' => :'Boolean',
        :'id' => :'String',
        :'is_default' => :'Boolean',
        :'is_deleted' => :'Boolean',
        :'is_enabled' => :'Boolean',
        :'message' => :'String',
        :'name' => :'String',
        :'options' => :'SecurityMonitoringRuleOptions',
        :'queries' => :'Array<SecurityMonitoringStandardRuleQuery>',
        :'tags' => :'Array<String>',
        :'third_party_cases' => :'Array<SecurityMonitoringThirdPartyRuleCase>',
        :'type' => :'SecurityMonitoringRuleTypeRead',
        :'update_author_id' => :'Integer',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringStandardRuleResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SecurityMonitoringStandardRuleResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cases')
        if (value = attributes[:'cases']).is_a?(Array)
          self.cases = value
        end
      end

      if attributes.key?(:'compliance_signal_options')
        self.compliance_signal_options = attributes[:'compliance_signal_options']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'creation_author_id')
        self.creation_author_id = attributes[:'creation_author_id']
      end

      if attributes.key?(:'deprecation_date')
        self.deprecation_date = attributes[:'deprecation_date']
      end

      if attributes.key?(:'filters')
        if (value = attributes[:'filters']).is_a?(Array)
          self.filters = value
        end
      end

      if attributes.key?(:'has_extended_title')
        self.has_extended_title = attributes[:'has_extended_title']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_default')
        self.is_default = attributes[:'is_default']
      end

      if attributes.key?(:'is_deleted')
        self.is_deleted = attributes[:'is_deleted']
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'queries')
        if (value = attributes[:'queries']).is_a?(Array)
          self.queries = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'third_party_cases')
        if (value = attributes[:'third_party_cases']).is_a?(Array)
          self.third_party_cases = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'update_author_id')
        self.update_author_id = attributes[:'update_author_id']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cases == o.cases &&
          compliance_signal_options == o.compliance_signal_options &&
          created_at == o.created_at &&
          creation_author_id == o.creation_author_id &&
          deprecation_date == o.deprecation_date &&
          filters == o.filters &&
          has_extended_title == o.has_extended_title &&
          id == o.id &&
          is_default == o.is_default &&
          is_deleted == o.is_deleted &&
          is_enabled == o.is_enabled &&
          message == o.message &&
          name == o.name &&
          options == o.options &&
          queries == o.queries &&
          tags == o.tags &&
          third_party_cases == o.third_party_cases &&
          type == o.type &&
          update_author_id == o.update_author_id &&
          version == o.version
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [cases, compliance_signal_options, created_at, creation_author_id, deprecation_date, filters, has_extended_title, id, is_default, is_deleted, is_enabled, message, name, options, queries, tags, third_party_cases, type, update_author_id, version].hash
    end
  end
end
