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
  # Number of hourly recorded custom metrics for a given organization.
  class UsageTopAvgMetricsHour
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Average number of timeseries per hour in which the metric occurs.
    attr_accessor :avg_metric_hour

    # Maximum number of timeseries per hour in which the metric occurs.
    attr_accessor :max_metric_hour

    # Contains the metric category.
    attr_accessor :metric_category

    # Contains the custom metric name.
    attr_accessor :metric_name

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'avg_metric_hour' => :'avg_metric_hour',
        :'max_metric_hour' => :'max_metric_hour',
        :'metric_category' => :'metric_category',
        :'metric_name' => :'metric_name'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'avg_metric_hour' => :'Integer',
        :'max_metric_hour' => :'Integer',
        :'metric_category' => :'UsageMetricCategory',
        :'metric_name' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageTopAvgMetricsHour` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageTopAvgMetricsHour`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'avg_metric_hour')
        self.avg_metric_hour = attributes[:'avg_metric_hour']
      end

      if attributes.key?(:'max_metric_hour')
        self.max_metric_hour = attributes[:'max_metric_hour']
      end

      if attributes.key?(:'metric_category')
        self.metric_category = attributes[:'metric_category']
      end

      if attributes.key?(:'metric_name')
        self.metric_name = attributes[:'metric_name']
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
          avg_metric_hour == o.avg_metric_hour &&
          max_metric_hour == o.max_metric_hour &&
          metric_category == o.metric_category &&
          metric_name == o.metric_name
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:avg_metric_hour, :max_metric_hour, :metric_category, :metric_name].hash
    end
  end
end
