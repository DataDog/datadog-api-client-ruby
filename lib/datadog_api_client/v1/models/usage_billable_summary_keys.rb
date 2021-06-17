=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Response with aggregated usage types.
  class UsageBillableSummaryKeys
    attr_accessor :apm_host_sum

    attr_accessor :apm_host_top99p

    attr_accessor :apm_trace_search_sum

    attr_accessor :fargate_container_average

    attr_accessor :infra_container_sum

    attr_accessor :infra_host_sum

    attr_accessor :infra_host_top99p

    attr_accessor :iot_top99p

    attr_accessor :lambda_function_average

    attr_accessor :logs_indexed_15day_sum

    attr_accessor :logs_indexed_180day_sum

    attr_accessor :logs_indexed_30day_sum

    attr_accessor :logs_indexed_3day_sum

    attr_accessor :logs_indexed_45day_sum

    attr_accessor :logs_indexed_60day_sum

    attr_accessor :logs_indexed_7day_sum

    attr_accessor :logs_indexed_90day_sum

    attr_accessor :logs_indexed_custom_retention_sum

    attr_accessor :logs_indexed_sum

    attr_accessor :logs_ingested_sum

    attr_accessor :network_device_top99p

    attr_accessor :npm_flow_sum

    attr_accessor :npm_host_sum

    attr_accessor :npm_host_top99p

    attr_accessor :prof_container_sum

    attr_accessor :prof_host_top99p

    attr_accessor :rum_sum

    attr_accessor :serverless_invocation_sum

    attr_accessor :siem_sum

    attr_accessor :synthetics_api_tests_sum

    attr_accessor :synthetics_browser_checks_sum

    attr_accessor :timeseries_average

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'apm_host_sum' => :'apm_host_sum',
        :'apm_host_top99p' => :'apm_host_top99p',
        :'apm_trace_search_sum' => :'apm_trace_search_sum',
        :'fargate_container_average' => :'fargate_container_average',
        :'infra_container_sum' => :'infra_container_sum',
        :'infra_host_sum' => :'infra_host_sum',
        :'infra_host_top99p' => :'infra_host_top99p',
        :'iot_top99p' => :'iot_top99p',
        :'lambda_function_average' => :'lambda_function_average',
        :'logs_indexed_15day_sum' => :'logs_indexed_15day_sum',
        :'logs_indexed_180day_sum' => :'logs_indexed_180day_sum',
        :'logs_indexed_30day_sum' => :'logs_indexed_30day_sum',
        :'logs_indexed_3day_sum' => :'logs_indexed_3day_sum',
        :'logs_indexed_45day_sum' => :'logs_indexed_45day_sum',
        :'logs_indexed_60day_sum' => :'logs_indexed_60day_sum',
        :'logs_indexed_7day_sum' => :'logs_indexed_7day_sum',
        :'logs_indexed_90day_sum' => :'logs_indexed_90day_sum',
        :'logs_indexed_custom_retention_sum' => :'logs_indexed_custom_retention_sum',
        :'logs_indexed_sum' => :'logs_indexed_sum',
        :'logs_ingested_sum' => :'logs_ingested_sum',
        :'network_device_top99p' => :'network_device_top99p',
        :'npm_flow_sum' => :'npm_flow_sum',
        :'npm_host_sum' => :'npm_host_sum',
        :'npm_host_top99p' => :'npm_host_top99p',
        :'prof_container_sum' => :'prof_container_sum',
        :'prof_host_top99p' => :'prof_host_top99p',
        :'rum_sum' => :'rum_sum',
        :'serverless_invocation_sum' => :'serverless_invocation_sum',
        :'siem_sum' => :'siem_sum',
        :'synthetics_api_tests_sum' => :'synthetics_api_tests_sum',
        :'synthetics_browser_checks_sum' => :'synthetics_browser_checks_sum',
        :'timeseries_average' => :'timeseries_average'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'apm_host_sum' => :'UsageBillableSummaryBody',
        :'apm_host_top99p' => :'UsageBillableSummaryBody',
        :'apm_trace_search_sum' => :'UsageBillableSummaryBody',
        :'fargate_container_average' => :'UsageBillableSummaryBody',
        :'infra_container_sum' => :'UsageBillableSummaryBody',
        :'infra_host_sum' => :'UsageBillableSummaryBody',
        :'infra_host_top99p' => :'UsageBillableSummaryBody',
        :'iot_top99p' => :'UsageBillableSummaryBody',
        :'lambda_function_average' => :'UsageBillableSummaryBody',
        :'logs_indexed_15day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_180day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_30day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_3day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_45day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_60day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_7day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_90day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_custom_retention_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_sum' => :'UsageBillableSummaryBody',
        :'logs_ingested_sum' => :'UsageBillableSummaryBody',
        :'network_device_top99p' => :'UsageBillableSummaryBody',
        :'npm_flow_sum' => :'UsageBillableSummaryBody',
        :'npm_host_sum' => :'UsageBillableSummaryBody',
        :'npm_host_top99p' => :'UsageBillableSummaryBody',
        :'prof_container_sum' => :'UsageBillableSummaryBody',
        :'prof_host_top99p' => :'UsageBillableSummaryBody',
        :'rum_sum' => :'UsageBillableSummaryBody',
        :'serverless_invocation_sum' => :'UsageBillableSummaryBody',
        :'siem_sum' => :'UsageBillableSummaryBody',
        :'synthetics_api_tests_sum' => :'UsageBillableSummaryBody',
        :'synthetics_browser_checks_sum' => :'UsageBillableSummaryBody',
        :'timeseries_average' => :'UsageBillableSummaryBody'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageBillableSummaryKeys` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageBillableSummaryKeys`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'apm_host_sum')
        self.apm_host_sum = attributes[:'apm_host_sum']
      end

      if attributes.key?(:'apm_host_top99p')
        self.apm_host_top99p = attributes[:'apm_host_top99p']
      end

      if attributes.key?(:'apm_trace_search_sum')
        self.apm_trace_search_sum = attributes[:'apm_trace_search_sum']
      end

      if attributes.key?(:'fargate_container_average')
        self.fargate_container_average = attributes[:'fargate_container_average']
      end

      if attributes.key?(:'infra_container_sum')
        self.infra_container_sum = attributes[:'infra_container_sum']
      end

      if attributes.key?(:'infra_host_sum')
        self.infra_host_sum = attributes[:'infra_host_sum']
      end

      if attributes.key?(:'infra_host_top99p')
        self.infra_host_top99p = attributes[:'infra_host_top99p']
      end

      if attributes.key?(:'iot_top99p')
        self.iot_top99p = attributes[:'iot_top99p']
      end

      if attributes.key?(:'lambda_function_average')
        self.lambda_function_average = attributes[:'lambda_function_average']
      end

      if attributes.key?(:'logs_indexed_15day_sum')
        self.logs_indexed_15day_sum = attributes[:'logs_indexed_15day_sum']
      end

      if attributes.key?(:'logs_indexed_180day_sum')
        self.logs_indexed_180day_sum = attributes[:'logs_indexed_180day_sum']
      end

      if attributes.key?(:'logs_indexed_30day_sum')
        self.logs_indexed_30day_sum = attributes[:'logs_indexed_30day_sum']
      end

      if attributes.key?(:'logs_indexed_3day_sum')
        self.logs_indexed_3day_sum = attributes[:'logs_indexed_3day_sum']
      end

      if attributes.key?(:'logs_indexed_45day_sum')
        self.logs_indexed_45day_sum = attributes[:'logs_indexed_45day_sum']
      end

      if attributes.key?(:'logs_indexed_60day_sum')
        self.logs_indexed_60day_sum = attributes[:'logs_indexed_60day_sum']
      end

      if attributes.key?(:'logs_indexed_7day_sum')
        self.logs_indexed_7day_sum = attributes[:'logs_indexed_7day_sum']
      end

      if attributes.key?(:'logs_indexed_90day_sum')
        self.logs_indexed_90day_sum = attributes[:'logs_indexed_90day_sum']
      end

      if attributes.key?(:'logs_indexed_custom_retention_sum')
        self.logs_indexed_custom_retention_sum = attributes[:'logs_indexed_custom_retention_sum']
      end

      if attributes.key?(:'logs_indexed_sum')
        self.logs_indexed_sum = attributes[:'logs_indexed_sum']
      end

      if attributes.key?(:'logs_ingested_sum')
        self.logs_ingested_sum = attributes[:'logs_ingested_sum']
      end

      if attributes.key?(:'network_device_top99p')
        self.network_device_top99p = attributes[:'network_device_top99p']
      end

      if attributes.key?(:'npm_flow_sum')
        self.npm_flow_sum = attributes[:'npm_flow_sum']
      end

      if attributes.key?(:'npm_host_sum')
        self.npm_host_sum = attributes[:'npm_host_sum']
      end

      if attributes.key?(:'npm_host_top99p')
        self.npm_host_top99p = attributes[:'npm_host_top99p']
      end

      if attributes.key?(:'prof_container_sum')
        self.prof_container_sum = attributes[:'prof_container_sum']
      end

      if attributes.key?(:'prof_host_top99p')
        self.prof_host_top99p = attributes[:'prof_host_top99p']
      end

      if attributes.key?(:'rum_sum')
        self.rum_sum = attributes[:'rum_sum']
      end

      if attributes.key?(:'serverless_invocation_sum')
        self.serverless_invocation_sum = attributes[:'serverless_invocation_sum']
      end

      if attributes.key?(:'siem_sum')
        self.siem_sum = attributes[:'siem_sum']
      end

      if attributes.key?(:'synthetics_api_tests_sum')
        self.synthetics_api_tests_sum = attributes[:'synthetics_api_tests_sum']
      end

      if attributes.key?(:'synthetics_browser_checks_sum')
        self.synthetics_browser_checks_sum = attributes[:'synthetics_browser_checks_sum']
      end

      if attributes.key?(:'timeseries_average')
        self.timeseries_average = attributes[:'timeseries_average']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          apm_host_sum == o.apm_host_sum &&
          apm_host_top99p == o.apm_host_top99p &&
          apm_trace_search_sum == o.apm_trace_search_sum &&
          fargate_container_average == o.fargate_container_average &&
          infra_container_sum == o.infra_container_sum &&
          infra_host_sum == o.infra_host_sum &&
          infra_host_top99p == o.infra_host_top99p &&
          iot_top99p == o.iot_top99p &&
          lambda_function_average == o.lambda_function_average &&
          logs_indexed_15day_sum == o.logs_indexed_15day_sum &&
          logs_indexed_180day_sum == o.logs_indexed_180day_sum &&
          logs_indexed_30day_sum == o.logs_indexed_30day_sum &&
          logs_indexed_3day_sum == o.logs_indexed_3day_sum &&
          logs_indexed_45day_sum == o.logs_indexed_45day_sum &&
          logs_indexed_60day_sum == o.logs_indexed_60day_sum &&
          logs_indexed_7day_sum == o.logs_indexed_7day_sum &&
          logs_indexed_90day_sum == o.logs_indexed_90day_sum &&
          logs_indexed_custom_retention_sum == o.logs_indexed_custom_retention_sum &&
          logs_indexed_sum == o.logs_indexed_sum &&
          logs_ingested_sum == o.logs_ingested_sum &&
          network_device_top99p == o.network_device_top99p &&
          npm_flow_sum == o.npm_flow_sum &&
          npm_host_sum == o.npm_host_sum &&
          npm_host_top99p == o.npm_host_top99p &&
          prof_container_sum == o.prof_container_sum &&
          prof_host_top99p == o.prof_host_top99p &&
          rum_sum == o.rum_sum &&
          serverless_invocation_sum == o.serverless_invocation_sum &&
          siem_sum == o.siem_sum &&
          synthetics_api_tests_sum == o.synthetics_api_tests_sum &&
          synthetics_browser_checks_sum == o.synthetics_browser_checks_sum &&
          timeseries_average == o.timeseries_average
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [apm_host_sum, apm_host_top99p, apm_trace_search_sum, fargate_container_average, infra_container_sum, infra_host_sum, infra_host_top99p, iot_top99p, lambda_function_average, logs_indexed_15day_sum, logs_indexed_180day_sum, logs_indexed_30day_sum, logs_indexed_3day_sum, logs_indexed_45day_sum, logs_indexed_60day_sum, logs_indexed_7day_sum, logs_indexed_90day_sum, logs_indexed_custom_retention_sum, logs_indexed_sum, logs_ingested_sum, network_device_top99p, npm_flow_sum, npm_host_sum, npm_host_top99p, prof_container_sum, prof_host_top99p, rum_sum, serverless_invocation_sum, siem_sum, synthetics_api_tests_sum, synthetics_browser_checks_sum, timeseries_average].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when :Array
        # generic array, return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
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
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
