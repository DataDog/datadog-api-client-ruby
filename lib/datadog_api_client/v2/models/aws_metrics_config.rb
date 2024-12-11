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
  # AWS Metrics Collection config.
  class AWSMetricsConfig
    include BaseGenericModel

    # Enable EC2 automute for AWS metrics. Defaults to `true`.
    attr_accessor :automute_enabled

    # Enable CloudWatch alarms collection. Defaults to `false`.
    attr_accessor :collect_cloudwatch_alarms

    # Enable custom metrics collection. Defaults to `false`.
    attr_accessor :collect_custom_metrics

    # Enable AWS metrics collection. Defaults to `true`.
    attr_accessor :enabled

    # AWS Metrics namespace filters. Defaults to `exclude_only`.
    attr_accessor :namespace_filters

    # AWS Metrics collection tag filters list. Defaults to `[]`.
    attr_accessor :tag_filters

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'automute_enabled' => :'automute_enabled',
        :'collect_cloudwatch_alarms' => :'collect_cloudwatch_alarms',
        :'collect_custom_metrics' => :'collect_custom_metrics',
        :'enabled' => :'enabled',
        :'namespace_filters' => :'namespace_filters',
        :'tag_filters' => :'tag_filters'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'automute_enabled' => :'Boolean',
        :'collect_cloudwatch_alarms' => :'Boolean',
        :'collect_custom_metrics' => :'Boolean',
        :'enabled' => :'Boolean',
        :'namespace_filters' => :'AWSNamespaceFilters',
        :'tag_filters' => :'Array<AWSNamespaceTagFilter>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::AWSMetricsConfig` initialize method"
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

      if attributes.key?(:'automute_enabled')
        self.automute_enabled = attributes[:'automute_enabled']
      end

      if attributes.key?(:'collect_cloudwatch_alarms')
        self.collect_cloudwatch_alarms = attributes[:'collect_cloudwatch_alarms']
      end

      if attributes.key?(:'collect_custom_metrics')
        self.collect_custom_metrics = attributes[:'collect_custom_metrics']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'namespace_filters')
        self.namespace_filters = attributes[:'namespace_filters']
      end

      if attributes.key?(:'tag_filters')
        if (value = attributes[:'tag_filters']).is_a?(Array)
          self.tag_filters = value
        end
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
          automute_enabled == o.automute_enabled &&
          collect_cloudwatch_alarms == o.collect_cloudwatch_alarms &&
          collect_custom_metrics == o.collect_custom_metrics &&
          enabled == o.enabled &&
          namespace_filters == o.namespace_filters &&
          tag_filters == o.tag_filters &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [automute_enabled, collect_cloudwatch_alarms, collect_custom_metrics, enabled, namespace_filters, tag_filters, additional_properties].hash
    end
  end
end
