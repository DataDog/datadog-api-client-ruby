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
  # Object describing a Datadog Log index.
  class LogsIndex
    include BaseGenericModel

    # The number of log events you can send in this index per day before you are rate-limited.
    attr_accessor :daily_limit

    # Object containing options to override the default daily limit reset time.
    attr_accessor :daily_limit_reset

    # A percentage threshold of the daily quota at which a Datadog warning event is generated.
    attr_reader :daily_limit_warning_threshold_percentage

    # An array of exclusion objects. The logs are tested against the query of each filter,
    # following the order of the array. Only the first matching active exclusion matters,
    # others (if any) are ignored.
    attr_accessor :exclusion_filters

    # Filter for logs.
    attr_reader :filter

    # A boolean stating if the index is rate limited, meaning more logs than the daily limit have been sent.
    # Rate limit is reset every-day at 2pm UTC.
    attr_accessor :is_rate_limited

    # The name of the index.
    attr_reader :name

    # The total number of days logs are stored in Standard and Flex Tier before being deleted from the index.
    # If Standard Tier is enabled on this index, logs are first retained in Standard Tier for the number of days specified through `num_retention_days`,
    # and then stored in Flex Tier until the number of days specified in `num_flex_logs_retention_days` is reached.
    # The available values depend on retention plans specified in your organization's contract/subscriptions.
    attr_accessor :num_flex_logs_retention_days

    # The number of days logs are stored in Standard Tier before aging into the Flex Tier or being deleted from the index.
    # The available values depend on retention plans specified in your organization's contract/subscriptions.
    attr_accessor :num_retention_days

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'daily_limit' => :'daily_limit',
        :'daily_limit_reset' => :'daily_limit_reset',
        :'daily_limit_warning_threshold_percentage' => :'daily_limit_warning_threshold_percentage',
        :'exclusion_filters' => :'exclusion_filters',
        :'filter' => :'filter',
        :'is_rate_limited' => :'is_rate_limited',
        :'name' => :'name',
        :'num_flex_logs_retention_days' => :'num_flex_logs_retention_days',
        :'num_retention_days' => :'num_retention_days'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'daily_limit' => :'Integer',
        :'daily_limit_reset' => :'LogsDailyLimitReset',
        :'daily_limit_warning_threshold_percentage' => :'Float',
        :'exclusion_filters' => :'Array<LogsExclusion>',
        :'filter' => :'LogsFilter',
        :'is_rate_limited' => :'Boolean',
        :'name' => :'String',
        :'num_flex_logs_retention_days' => :'Integer',
        :'num_retention_days' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsIndex` initialize method"
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

      if attributes.key?(:'daily_limit')
        self.daily_limit = attributes[:'daily_limit']
      end

      if attributes.key?(:'daily_limit_reset')
        self.daily_limit_reset = attributes[:'daily_limit_reset']
      end

      if attributes.key?(:'daily_limit_warning_threshold_percentage')
        self.daily_limit_warning_threshold_percentage = attributes[:'daily_limit_warning_threshold_percentage']
      end

      if attributes.key?(:'exclusion_filters')
        if (value = attributes[:'exclusion_filters']).is_a?(Array)
          self.exclusion_filters = value
        end
      end

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'is_rate_limited')
        self.is_rate_limited = attributes[:'is_rate_limited']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'num_flex_logs_retention_days')
        self.num_flex_logs_retention_days = attributes[:'num_flex_logs_retention_days']
      end

      if attributes.key?(:'num_retention_days')
        self.num_retention_days = attributes[:'num_retention_days']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@daily_limit_warning_threshold_percentage.nil? && @daily_limit_warning_threshold_percentage > 99.99
      return false if !@daily_limit_warning_threshold_percentage.nil? && @daily_limit_warning_threshold_percentage < 50
      return false if @filter.nil?
      return false if @name.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param daily_limit_warning_threshold_percentage [Object] Object to be assigned
    # @!visibility private
    def daily_limit_warning_threshold_percentage=(daily_limit_warning_threshold_percentage)
      if !daily_limit_warning_threshold_percentage.nil? && daily_limit_warning_threshold_percentage > 99.99
        fail ArgumentError, 'invalid value for "daily_limit_warning_threshold_percentage", must be smaller than or equal to 99.99.'
      end
      if !daily_limit_warning_threshold_percentage.nil? && daily_limit_warning_threshold_percentage < 50
        fail ArgumentError, 'invalid value for "daily_limit_warning_threshold_percentage", must be greater than or equal to 50.'
      end
      @daily_limit_warning_threshold_percentage = daily_limit_warning_threshold_percentage
    end

    # Custom attribute writer method with validation
    # @param filter [Object] Object to be assigned
    # @!visibility private
    def filter=(filter)
      if filter.nil?
        fail ArgumentError, 'invalid value for "filter", filter cannot be nil.'
      end
      @filter = filter
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
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
          daily_limit == o.daily_limit &&
          daily_limit_reset == o.daily_limit_reset &&
          daily_limit_warning_threshold_percentage == o.daily_limit_warning_threshold_percentage &&
          exclusion_filters == o.exclusion_filters &&
          filter == o.filter &&
          is_rate_limited == o.is_rate_limited &&
          name == o.name &&
          num_flex_logs_retention_days == o.num_flex_logs_retention_days &&
          num_retention_days == o.num_retention_days &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [daily_limit, daily_limit_reset, daily_limit_warning_threshold_percentage, exclusion_filters, filter, is_rate_limited, name, num_flex_logs_retention_days, num_retention_days, additional_properties].hash
    end
  end
end
