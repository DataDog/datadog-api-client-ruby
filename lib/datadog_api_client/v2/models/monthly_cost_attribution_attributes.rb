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
  # Cost Attribution by Tag for a given organization.
  class MonthlyCostAttributionAttributes
    include BaseGenericModel

    # Datetime in ISO-8601 format, UTC, precise to hour: `[YYYY-MM-DDThh]`.
    attr_accessor :month

    # The name of the organization.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # The source of the cost attribution tag configuration and the selected tags in the format `<source_org_name>:::<selected tag 1>///<selected tag 2>///<selected tag 3>`.
    attr_accessor :tag_config_source

    # Tag keys and values.
    # A `null` value here means that the requested tag breakdown cannot be applied because it does not match the [tags
    # configured for usage attribution](https://docs.datadoghq.com/account_management/billing/usage_attribution/#getting-started).
    # In this scenario the API returns the total cost, not broken down by tags.
    attr_accessor :tags

    # Shows the most recent hour in the current months for all organizations for which all costs were calculated.
    attr_accessor :updated_at

    # Fields in Cost Attribution by tag(s). Example: `infra_host_on_demand_cost`, `infra_host_committed_cost`, `infra_host_total_cost`, `infra_host_percentage_in_org`, `infra_host_percentage_in_account`.
    attr_accessor :values

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'month' => :'month',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id',
        :'tag_config_source' => :'tag_config_source',
        :'tags' => :'tags',
        :'updated_at' => :'updated_at',
        :'values' => :'values'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'month' => :'Time',
        :'org_name' => :'String',
        :'public_id' => :'String',
        :'tag_config_source' => :'String',
        :'tags' => :'Hash<String, Array<String>>',
        :'updated_at' => :'String',
        :'values' => :'Object'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'tags',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::MonthlyCostAttributionAttributes` initialize method"
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

      if attributes.key?(:'month')
        self.month = attributes[:'month']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'tag_config_source')
        self.tag_config_source = attributes[:'tag_config_source']
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'values')
        self.values = attributes[:'values']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          month == o.month &&
          org_name == o.org_name &&
          public_id == o.public_id &&
          tag_config_source == o.tag_config_source &&
          tags == o.tags &&
          updated_at == o.updated_at &&
          values == o.values
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [month, org_name, public_id, tag_config_source, tags, updated_at, values].hash
    end
  end
end
