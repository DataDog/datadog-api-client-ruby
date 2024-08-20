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
  # Object containing the definition of a metric tag configuration to be updated.
  class MetricTagConfigurationUpdateAttributes
    include BaseGenericModel

    # A list of queryable aggregation combinations for a count, rate, or gauge metric.
    # By default, count and rate metrics require the (time: sum, space: sum) aggregation and
    # Gauge metrics require the (time: avg, space: avg) aggregation.
    # Additional time & space combinations are also available:
    #
    # - time: avg, space: avg
    # - time: avg, space: max
    # - time: avg, space: min
    # - time: avg, space: sum
    # - time: count, space: sum
    # - time: max, space: max
    # - time: min, space: min
    # - time: sum, space: avg
    # - time: sum, space: sum
    #
    # Can only be applied to metrics that have a `metric_type` of `count`, `rate`, or `gauge`.
    attr_accessor :aggregations

    # When set to true, the configuration will exclude the configured tags and include any other submitted tags.
    # When set to false, the configuration will include the configured tags and exclude any other submitted tags.
    # Defaults to false. Requires `tags` property.
    attr_accessor :exclude_tags_mode

    # Toggle to include/exclude percentiles for a distribution metric.
    # Defaults to false. Can only be applied to metrics that have a `metric_type` of `distribution`.
    attr_accessor :include_percentiles

    # A list of tag keys that will be queryable for your metric.
    attr_accessor :tags

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregations' => :'aggregations',
        :'exclude_tags_mode' => :'exclude_tags_mode',
        :'include_percentiles' => :'include_percentiles',
        :'tags' => :'tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggregations' => :'Array<MetricCustomAggregation>',
        :'exclude_tags_mode' => :'Boolean',
        :'include_percentiles' => :'Boolean',
        :'tags' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::MetricTagConfigurationUpdateAttributes` initialize method"
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

      if attributes.key?(:'aggregations')
        if (value = attributes[:'aggregations']).is_a?(Array)
          self.aggregations = value
        end
      end

      if attributes.key?(:'exclude_tags_mode')
        self.exclude_tags_mode = attributes[:'exclude_tags_mode']
      end

      if attributes.key?(:'include_percentiles')
        self.include_percentiles = attributes[:'include_percentiles']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregations == o.aggregations &&
          exclude_tags_mode == o.exclude_tags_mode &&
          include_percentiles == o.include_percentiles &&
          tags == o.tags
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aggregations, exclude_tags_mode, include_percentiles, tags].hash
    end
  end
end
