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
  # The usage for one set of tags for one hour.
  class HourlyUsageAttributionBody
    include BaseGenericModel

    # The hour for the usage.
    attr_accessor :hour

    # The name of the organization.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # The region of the Datadog instance that the organization belongs to.
    attr_accessor :region

    # The source of the usage attribution tag configuration and the selected tags in the format of `<source_org_name>:::<selected tag 1>///<selected tag 2>///<selected tag 3>`.
    attr_accessor :tag_config_source

    # Tag keys and values.
    #
    # A `null` value here means that the requested tag breakdown cannot be applied because it does not match the [tags
    # configured for usage attribution](https://docs.datadoghq.com/account_management/billing/usage_attribution/#getting-started).
    # In this scenario the API returns the total usage, not broken down by tags.
    attr_accessor :tags

    # Total product usage for the given tags within the hour.
    attr_accessor :total_usage_sum

    # Shows the most recent hour in the current month for all organizations where usages are calculated.
    attr_accessor :updated_at

    # Supported products for hourly usage attribution requests.
    attr_accessor :usage_type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'hour' => :'hour',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id',
        :'region' => :'region',
        :'tag_config_source' => :'tag_config_source',
        :'tags' => :'tags',
        :'total_usage_sum' => :'total_usage_sum',
        :'updated_at' => :'updated_at',
        :'usage_type' => :'usage_type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'hour' => :'Time',
        :'org_name' => :'String',
        :'public_id' => :'String',
        :'region' => :'String',
        :'tag_config_source' => :'String',
        :'tags' => :'Hash<String, Array<String>>',
        :'total_usage_sum' => :'Float',
        :'updated_at' => :'String',
        :'usage_type' => :'HourlyUsageAttributionUsageType'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::HourlyUsageAttributionBody` initialize method"
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

      if attributes.key?(:'hour')
        self.hour = attributes[:'hour']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'tag_config_source')
        self.tag_config_source = attributes[:'tag_config_source']
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'total_usage_sum')
        self.total_usage_sum = attributes[:'total_usage_sum']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'usage_type')
        self.usage_type = attributes[:'usage_type']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          hour == o.hour &&
          org_name == o.org_name &&
          public_id == o.public_id &&
          region == o.region &&
          tag_config_source == o.tag_config_source &&
          tags == o.tags &&
          total_usage_sum == o.total_usage_sum &&
          updated_at == o.updated_at &&
          usage_type == o.usage_type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [hour, org_name, public_id, region, tag_config_source, tags, total_usage_sum, updated_at, usage_type].hash
    end
  end
end
