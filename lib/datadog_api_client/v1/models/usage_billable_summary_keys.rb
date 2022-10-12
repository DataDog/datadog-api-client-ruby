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
  # Response with aggregated usage types.
  class UsageBillableSummaryKeys
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Response with properties for each aggregated usage type.
    attr_accessor :apm_fargate_average

    # Response with properties for each aggregated usage type.
    attr_accessor :apm_fargate_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :apm_host_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :apm_host_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :apm_profiler_host_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :apm_profiler_host_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :apm_trace_search_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :application_security_host_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :ci_pipeline_indexed_spans_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :ci_pipeline_maximum

    # Response with properties for each aggregated usage type.
    attr_accessor :ci_pipeline_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :ci_test_indexed_spans_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :ci_testing_maximum

    # Response with properties for each aggregated usage type.
    attr_accessor :ci_testing_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :cspm_container_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :cspm_host_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :cspm_host_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :custom_event_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :cws_container_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :cws_host_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :cws_host_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :dbm_host_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :dbm_host_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :dbm_normalized_queries_average

    # Response with properties for each aggregated usage type.
    attr_accessor :dbm_normalized_queries_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :fargate_container_apm_and_profiler_average

    # Response with properties for each aggregated usage type.
    attr_accessor :fargate_container_apm_and_profiler_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :fargate_container_average

    # Response with properties for each aggregated usage type.
    attr_accessor :fargate_container_profiler_average

    # Response with properties for each aggregated usage type.
    attr_accessor :fargate_container_profiler_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :fargate_container_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :incident_management_maximum

    # Response with properties for each aggregated usage type.
    attr_accessor :incident_management_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :infra_and_apm_host_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :infra_and_apm_host_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :infra_container_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :infra_host_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :infra_host_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :ingested_spans_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :ingested_timeseries_average

    # Response with properties for each aggregated usage type.
    attr_accessor :ingested_timeseries_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :iot_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :iot_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :lambda_function_average

    # Response with properties for each aggregated usage type.
    attr_accessor :lambda_function_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_15day_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_180day_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_30day_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_360day_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_3day_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_45day_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_60day_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_7day_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_90day_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_custom_retention_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_indexed_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :logs_ingested_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :network_device_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :network_device_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :npm_flow_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :npm_host_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :npm_host_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :observability_pipeline_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :online_archive_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :prof_container_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :prof_host_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :prof_host_top99p

    # Response with properties for each aggregated usage type.
    attr_accessor :rum_lite_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :rum_replay_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :rum_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :rum_units_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :sensitive_data_scanner_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :serverless_invocation_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :siem_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :standard_timeseries_average

    # Response with properties for each aggregated usage type.
    attr_accessor :synthetics_api_tests_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :synthetics_browser_checks_sum

    # Response with properties for each aggregated usage type.
    attr_accessor :timeseries_average

    # Response with properties for each aggregated usage type.
    attr_accessor :timeseries_sum

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'apm_fargate_average' => :'apm_fargate_average',
        :'apm_fargate_sum' => :'apm_fargate_sum',
        :'apm_host_sum' => :'apm_host_sum',
        :'apm_host_top99p' => :'apm_host_top99p',
        :'apm_profiler_host_sum' => :'apm_profiler_host_sum',
        :'apm_profiler_host_top99p' => :'apm_profiler_host_top99p',
        :'apm_trace_search_sum' => :'apm_trace_search_sum',
        :'application_security_host_sum' => :'application_security_host_sum',
        :'ci_pipeline_indexed_spans_sum' => :'ci_pipeline_indexed_spans_sum',
        :'ci_pipeline_maximum' => :'ci_pipeline_maximum',
        :'ci_pipeline_sum' => :'ci_pipeline_sum',
        :'ci_test_indexed_spans_sum' => :'ci_test_indexed_spans_sum',
        :'ci_testing_maximum' => :'ci_testing_maximum',
        :'ci_testing_sum' => :'ci_testing_sum',
        :'cspm_container_sum' => :'cspm_container_sum',
        :'cspm_host_sum' => :'cspm_host_sum',
        :'cspm_host_top99p' => :'cspm_host_top99p',
        :'custom_event_sum' => :'custom_event_sum',
        :'cws_container_sum' => :'cws_container_sum',
        :'cws_host_sum' => :'cws_host_sum',
        :'cws_host_top99p' => :'cws_host_top99p',
        :'dbm_host_sum' => :'dbm_host_sum',
        :'dbm_host_top99p' => :'dbm_host_top99p',
        :'dbm_normalized_queries_average' => :'dbm_normalized_queries_average',
        :'dbm_normalized_queries_sum' => :'dbm_normalized_queries_sum',
        :'fargate_container_apm_and_profiler_average' => :'fargate_container_apm_and_profiler_average',
        :'fargate_container_apm_and_profiler_sum' => :'fargate_container_apm_and_profiler_sum',
        :'fargate_container_average' => :'fargate_container_average',
        :'fargate_container_profiler_average' => :'fargate_container_profiler_average',
        :'fargate_container_profiler_sum' => :'fargate_container_profiler_sum',
        :'fargate_container_sum' => :'fargate_container_sum',
        :'incident_management_maximum' => :'incident_management_maximum',
        :'incident_management_sum' => :'incident_management_sum',
        :'infra_and_apm_host_sum' => :'infra_and_apm_host_sum',
        :'infra_and_apm_host_top99p' => :'infra_and_apm_host_top99p',
        :'infra_container_sum' => :'infra_container_sum',
        :'infra_host_sum' => :'infra_host_sum',
        :'infra_host_top99p' => :'infra_host_top99p',
        :'ingested_spans_sum' => :'ingested_spans_sum',
        :'ingested_timeseries_average' => :'ingested_timeseries_average',
        :'ingested_timeseries_sum' => :'ingested_timeseries_sum',
        :'iot_sum' => :'iot_sum',
        :'iot_top99p' => :'iot_top99p',
        :'lambda_function_average' => :'lambda_function_average',
        :'lambda_function_sum' => :'lambda_function_sum',
        :'logs_indexed_15day_sum' => :'logs_indexed_15day_sum',
        :'logs_indexed_180day_sum' => :'logs_indexed_180day_sum',
        :'logs_indexed_30day_sum' => :'logs_indexed_30day_sum',
        :'logs_indexed_360day_sum' => :'logs_indexed_360day_sum',
        :'logs_indexed_3day_sum' => :'logs_indexed_3day_sum',
        :'logs_indexed_45day_sum' => :'logs_indexed_45day_sum',
        :'logs_indexed_60day_sum' => :'logs_indexed_60day_sum',
        :'logs_indexed_7day_sum' => :'logs_indexed_7day_sum',
        :'logs_indexed_90day_sum' => :'logs_indexed_90day_sum',
        :'logs_indexed_custom_retention_sum' => :'logs_indexed_custom_retention_sum',
        :'logs_indexed_sum' => :'logs_indexed_sum',
        :'logs_ingested_sum' => :'logs_ingested_sum',
        :'network_device_sum' => :'network_device_sum',
        :'network_device_top99p' => :'network_device_top99p',
        :'npm_flow_sum' => :'npm_flow_sum',
        :'npm_host_sum' => :'npm_host_sum',
        :'npm_host_top99p' => :'npm_host_top99p',
        :'observability_pipeline_sum' => :'observability_pipeline_sum',
        :'online_archive_sum' => :'online_archive_sum',
        :'prof_container_sum' => :'prof_container_sum',
        :'prof_host_sum' => :'prof_host_sum',
        :'prof_host_top99p' => :'prof_host_top99p',
        :'rum_lite_sum' => :'rum_lite_sum',
        :'rum_replay_sum' => :'rum_replay_sum',
        :'rum_sum' => :'rum_sum',
        :'rum_units_sum' => :'rum_units_sum',
        :'sensitive_data_scanner_sum' => :'sensitive_data_scanner_sum',
        :'serverless_invocation_sum' => :'serverless_invocation_sum',
        :'siem_sum' => :'siem_sum',
        :'standard_timeseries_average' => :'standard_timeseries_average',
        :'synthetics_api_tests_sum' => :'synthetics_api_tests_sum',
        :'synthetics_browser_checks_sum' => :'synthetics_browser_checks_sum',
        :'timeseries_average' => :'timeseries_average',
        :'timeseries_sum' => :'timeseries_sum'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'apm_fargate_average' => :'UsageBillableSummaryBody',
        :'apm_fargate_sum' => :'UsageBillableSummaryBody',
        :'apm_host_sum' => :'UsageBillableSummaryBody',
        :'apm_host_top99p' => :'UsageBillableSummaryBody',
        :'apm_profiler_host_sum' => :'UsageBillableSummaryBody',
        :'apm_profiler_host_top99p' => :'UsageBillableSummaryBody',
        :'apm_trace_search_sum' => :'UsageBillableSummaryBody',
        :'application_security_host_sum' => :'UsageBillableSummaryBody',
        :'ci_pipeline_indexed_spans_sum' => :'UsageBillableSummaryBody',
        :'ci_pipeline_maximum' => :'UsageBillableSummaryBody',
        :'ci_pipeline_sum' => :'UsageBillableSummaryBody',
        :'ci_test_indexed_spans_sum' => :'UsageBillableSummaryBody',
        :'ci_testing_maximum' => :'UsageBillableSummaryBody',
        :'ci_testing_sum' => :'UsageBillableSummaryBody',
        :'cspm_container_sum' => :'UsageBillableSummaryBody',
        :'cspm_host_sum' => :'UsageBillableSummaryBody',
        :'cspm_host_top99p' => :'UsageBillableSummaryBody',
        :'custom_event_sum' => :'UsageBillableSummaryBody',
        :'cws_container_sum' => :'UsageBillableSummaryBody',
        :'cws_host_sum' => :'UsageBillableSummaryBody',
        :'cws_host_top99p' => :'UsageBillableSummaryBody',
        :'dbm_host_sum' => :'UsageBillableSummaryBody',
        :'dbm_host_top99p' => :'UsageBillableSummaryBody',
        :'dbm_normalized_queries_average' => :'UsageBillableSummaryBody',
        :'dbm_normalized_queries_sum' => :'UsageBillableSummaryBody',
        :'fargate_container_apm_and_profiler_average' => :'UsageBillableSummaryBody',
        :'fargate_container_apm_and_profiler_sum' => :'UsageBillableSummaryBody',
        :'fargate_container_average' => :'UsageBillableSummaryBody',
        :'fargate_container_profiler_average' => :'UsageBillableSummaryBody',
        :'fargate_container_profiler_sum' => :'UsageBillableSummaryBody',
        :'fargate_container_sum' => :'UsageBillableSummaryBody',
        :'incident_management_maximum' => :'UsageBillableSummaryBody',
        :'incident_management_sum' => :'UsageBillableSummaryBody',
        :'infra_and_apm_host_sum' => :'UsageBillableSummaryBody',
        :'infra_and_apm_host_top99p' => :'UsageBillableSummaryBody',
        :'infra_container_sum' => :'UsageBillableSummaryBody',
        :'infra_host_sum' => :'UsageBillableSummaryBody',
        :'infra_host_top99p' => :'UsageBillableSummaryBody',
        :'ingested_spans_sum' => :'UsageBillableSummaryBody',
        :'ingested_timeseries_average' => :'UsageBillableSummaryBody',
        :'ingested_timeseries_sum' => :'UsageBillableSummaryBody',
        :'iot_sum' => :'UsageBillableSummaryBody',
        :'iot_top99p' => :'UsageBillableSummaryBody',
        :'lambda_function_average' => :'UsageBillableSummaryBody',
        :'lambda_function_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_15day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_180day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_30day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_360day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_3day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_45day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_60day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_7day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_90day_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_custom_retention_sum' => :'UsageBillableSummaryBody',
        :'logs_indexed_sum' => :'UsageBillableSummaryBody',
        :'logs_ingested_sum' => :'UsageBillableSummaryBody',
        :'network_device_sum' => :'UsageBillableSummaryBody',
        :'network_device_top99p' => :'UsageBillableSummaryBody',
        :'npm_flow_sum' => :'UsageBillableSummaryBody',
        :'npm_host_sum' => :'UsageBillableSummaryBody',
        :'npm_host_top99p' => :'UsageBillableSummaryBody',
        :'observability_pipeline_sum' => :'UsageBillableSummaryBody',
        :'online_archive_sum' => :'UsageBillableSummaryBody',
        :'prof_container_sum' => :'UsageBillableSummaryBody',
        :'prof_host_sum' => :'UsageBillableSummaryBody',
        :'prof_host_top99p' => :'UsageBillableSummaryBody',
        :'rum_lite_sum' => :'UsageBillableSummaryBody',
        :'rum_replay_sum' => :'UsageBillableSummaryBody',
        :'rum_sum' => :'UsageBillableSummaryBody',
        :'rum_units_sum' => :'UsageBillableSummaryBody',
        :'sensitive_data_scanner_sum' => :'UsageBillableSummaryBody',
        :'serverless_invocation_sum' => :'UsageBillableSummaryBody',
        :'siem_sum' => :'UsageBillableSummaryBody',
        :'standard_timeseries_average' => :'UsageBillableSummaryBody',
        :'synthetics_api_tests_sum' => :'UsageBillableSummaryBody',
        :'synthetics_browser_checks_sum' => :'UsageBillableSummaryBody',
        :'timeseries_average' => :'UsageBillableSummaryBody',
        :'timeseries_sum' => :'UsageBillableSummaryBody'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageBillableSummaryKeys` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageBillableSummaryKeys`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'apm_fargate_average')
        self.apm_fargate_average = attributes[:'apm_fargate_average']
      end

      if attributes.key?(:'apm_fargate_sum')
        self.apm_fargate_sum = attributes[:'apm_fargate_sum']
      end

      if attributes.key?(:'apm_host_sum')
        self.apm_host_sum = attributes[:'apm_host_sum']
      end

      if attributes.key?(:'apm_host_top99p')
        self.apm_host_top99p = attributes[:'apm_host_top99p']
      end

      if attributes.key?(:'apm_profiler_host_sum')
        self.apm_profiler_host_sum = attributes[:'apm_profiler_host_sum']
      end

      if attributes.key?(:'apm_profiler_host_top99p')
        self.apm_profiler_host_top99p = attributes[:'apm_profiler_host_top99p']
      end

      if attributes.key?(:'apm_trace_search_sum')
        self.apm_trace_search_sum = attributes[:'apm_trace_search_sum']
      end

      if attributes.key?(:'application_security_host_sum')
        self.application_security_host_sum = attributes[:'application_security_host_sum']
      end

      if attributes.key?(:'ci_pipeline_indexed_spans_sum')
        self.ci_pipeline_indexed_spans_sum = attributes[:'ci_pipeline_indexed_spans_sum']
      end

      if attributes.key?(:'ci_pipeline_maximum')
        self.ci_pipeline_maximum = attributes[:'ci_pipeline_maximum']
      end

      if attributes.key?(:'ci_pipeline_sum')
        self.ci_pipeline_sum = attributes[:'ci_pipeline_sum']
      end

      if attributes.key?(:'ci_test_indexed_spans_sum')
        self.ci_test_indexed_spans_sum = attributes[:'ci_test_indexed_spans_sum']
      end

      if attributes.key?(:'ci_testing_maximum')
        self.ci_testing_maximum = attributes[:'ci_testing_maximum']
      end

      if attributes.key?(:'ci_testing_sum')
        self.ci_testing_sum = attributes[:'ci_testing_sum']
      end

      if attributes.key?(:'cspm_container_sum')
        self.cspm_container_sum = attributes[:'cspm_container_sum']
      end

      if attributes.key?(:'cspm_host_sum')
        self.cspm_host_sum = attributes[:'cspm_host_sum']
      end

      if attributes.key?(:'cspm_host_top99p')
        self.cspm_host_top99p = attributes[:'cspm_host_top99p']
      end

      if attributes.key?(:'custom_event_sum')
        self.custom_event_sum = attributes[:'custom_event_sum']
      end

      if attributes.key?(:'cws_container_sum')
        self.cws_container_sum = attributes[:'cws_container_sum']
      end

      if attributes.key?(:'cws_host_sum')
        self.cws_host_sum = attributes[:'cws_host_sum']
      end

      if attributes.key?(:'cws_host_top99p')
        self.cws_host_top99p = attributes[:'cws_host_top99p']
      end

      if attributes.key?(:'dbm_host_sum')
        self.dbm_host_sum = attributes[:'dbm_host_sum']
      end

      if attributes.key?(:'dbm_host_top99p')
        self.dbm_host_top99p = attributes[:'dbm_host_top99p']
      end

      if attributes.key?(:'dbm_normalized_queries_average')
        self.dbm_normalized_queries_average = attributes[:'dbm_normalized_queries_average']
      end

      if attributes.key?(:'dbm_normalized_queries_sum')
        self.dbm_normalized_queries_sum = attributes[:'dbm_normalized_queries_sum']
      end

      if attributes.key?(:'fargate_container_apm_and_profiler_average')
        self.fargate_container_apm_and_profiler_average = attributes[:'fargate_container_apm_and_profiler_average']
      end

      if attributes.key?(:'fargate_container_apm_and_profiler_sum')
        self.fargate_container_apm_and_profiler_sum = attributes[:'fargate_container_apm_and_profiler_sum']
      end

      if attributes.key?(:'fargate_container_average')
        self.fargate_container_average = attributes[:'fargate_container_average']
      end

      if attributes.key?(:'fargate_container_profiler_average')
        self.fargate_container_profiler_average = attributes[:'fargate_container_profiler_average']
      end

      if attributes.key?(:'fargate_container_profiler_sum')
        self.fargate_container_profiler_sum = attributes[:'fargate_container_profiler_sum']
      end

      if attributes.key?(:'fargate_container_sum')
        self.fargate_container_sum = attributes[:'fargate_container_sum']
      end

      if attributes.key?(:'incident_management_maximum')
        self.incident_management_maximum = attributes[:'incident_management_maximum']
      end

      if attributes.key?(:'incident_management_sum')
        self.incident_management_sum = attributes[:'incident_management_sum']
      end

      if attributes.key?(:'infra_and_apm_host_sum')
        self.infra_and_apm_host_sum = attributes[:'infra_and_apm_host_sum']
      end

      if attributes.key?(:'infra_and_apm_host_top99p')
        self.infra_and_apm_host_top99p = attributes[:'infra_and_apm_host_top99p']
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

      if attributes.key?(:'ingested_spans_sum')
        self.ingested_spans_sum = attributes[:'ingested_spans_sum']
      end

      if attributes.key?(:'ingested_timeseries_average')
        self.ingested_timeseries_average = attributes[:'ingested_timeseries_average']
      end

      if attributes.key?(:'ingested_timeseries_sum')
        self.ingested_timeseries_sum = attributes[:'ingested_timeseries_sum']
      end

      if attributes.key?(:'iot_sum')
        self.iot_sum = attributes[:'iot_sum']
      end

      if attributes.key?(:'iot_top99p')
        self.iot_top99p = attributes[:'iot_top99p']
      end

      if attributes.key?(:'lambda_function_average')
        self.lambda_function_average = attributes[:'lambda_function_average']
      end

      if attributes.key?(:'lambda_function_sum')
        self.lambda_function_sum = attributes[:'lambda_function_sum']
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

      if attributes.key?(:'logs_indexed_360day_sum')
        self.logs_indexed_360day_sum = attributes[:'logs_indexed_360day_sum']
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

      if attributes.key?(:'network_device_sum')
        self.network_device_sum = attributes[:'network_device_sum']
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

      if attributes.key?(:'observability_pipeline_sum')
        self.observability_pipeline_sum = attributes[:'observability_pipeline_sum']
      end

      if attributes.key?(:'online_archive_sum')
        self.online_archive_sum = attributes[:'online_archive_sum']
      end

      if attributes.key?(:'prof_container_sum')
        self.prof_container_sum = attributes[:'prof_container_sum']
      end

      if attributes.key?(:'prof_host_sum')
        self.prof_host_sum = attributes[:'prof_host_sum']
      end

      if attributes.key?(:'prof_host_top99p')
        self.prof_host_top99p = attributes[:'prof_host_top99p']
      end

      if attributes.key?(:'rum_lite_sum')
        self.rum_lite_sum = attributes[:'rum_lite_sum']
      end

      if attributes.key?(:'rum_replay_sum')
        self.rum_replay_sum = attributes[:'rum_replay_sum']
      end

      if attributes.key?(:'rum_sum')
        self.rum_sum = attributes[:'rum_sum']
      end

      if attributes.key?(:'rum_units_sum')
        self.rum_units_sum = attributes[:'rum_units_sum']
      end

      if attributes.key?(:'sensitive_data_scanner_sum')
        self.sensitive_data_scanner_sum = attributes[:'sensitive_data_scanner_sum']
      end

      if attributes.key?(:'serverless_invocation_sum')
        self.serverless_invocation_sum = attributes[:'serverless_invocation_sum']
      end

      if attributes.key?(:'siem_sum')
        self.siem_sum = attributes[:'siem_sum']
      end

      if attributes.key?(:'standard_timeseries_average')
        self.standard_timeseries_average = attributes[:'standard_timeseries_average']
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

      if attributes.key?(:'timeseries_sum')
        self.timeseries_sum = attributes[:'timeseries_sum']
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
          apm_fargate_average == o.apm_fargate_average &&
          apm_fargate_sum == o.apm_fargate_sum &&
          apm_host_sum == o.apm_host_sum &&
          apm_host_top99p == o.apm_host_top99p &&
          apm_profiler_host_sum == o.apm_profiler_host_sum &&
          apm_profiler_host_top99p == o.apm_profiler_host_top99p &&
          apm_trace_search_sum == o.apm_trace_search_sum &&
          application_security_host_sum == o.application_security_host_sum &&
          ci_pipeline_indexed_spans_sum == o.ci_pipeline_indexed_spans_sum &&
          ci_pipeline_maximum == o.ci_pipeline_maximum &&
          ci_pipeline_sum == o.ci_pipeline_sum &&
          ci_test_indexed_spans_sum == o.ci_test_indexed_spans_sum &&
          ci_testing_maximum == o.ci_testing_maximum &&
          ci_testing_sum == o.ci_testing_sum &&
          cspm_container_sum == o.cspm_container_sum &&
          cspm_host_sum == o.cspm_host_sum &&
          cspm_host_top99p == o.cspm_host_top99p &&
          custom_event_sum == o.custom_event_sum &&
          cws_container_sum == o.cws_container_sum &&
          cws_host_sum == o.cws_host_sum &&
          cws_host_top99p == o.cws_host_top99p &&
          dbm_host_sum == o.dbm_host_sum &&
          dbm_host_top99p == o.dbm_host_top99p &&
          dbm_normalized_queries_average == o.dbm_normalized_queries_average &&
          dbm_normalized_queries_sum == o.dbm_normalized_queries_sum &&
          fargate_container_apm_and_profiler_average == o.fargate_container_apm_and_profiler_average &&
          fargate_container_apm_and_profiler_sum == o.fargate_container_apm_and_profiler_sum &&
          fargate_container_average == o.fargate_container_average &&
          fargate_container_profiler_average == o.fargate_container_profiler_average &&
          fargate_container_profiler_sum == o.fargate_container_profiler_sum &&
          fargate_container_sum == o.fargate_container_sum &&
          incident_management_maximum == o.incident_management_maximum &&
          incident_management_sum == o.incident_management_sum &&
          infra_and_apm_host_sum == o.infra_and_apm_host_sum &&
          infra_and_apm_host_top99p == o.infra_and_apm_host_top99p &&
          infra_container_sum == o.infra_container_sum &&
          infra_host_sum == o.infra_host_sum &&
          infra_host_top99p == o.infra_host_top99p &&
          ingested_spans_sum == o.ingested_spans_sum &&
          ingested_timeseries_average == o.ingested_timeseries_average &&
          ingested_timeseries_sum == o.ingested_timeseries_sum &&
          iot_sum == o.iot_sum &&
          iot_top99p == o.iot_top99p &&
          lambda_function_average == o.lambda_function_average &&
          lambda_function_sum == o.lambda_function_sum &&
          logs_indexed_15day_sum == o.logs_indexed_15day_sum &&
          logs_indexed_180day_sum == o.logs_indexed_180day_sum &&
          logs_indexed_30day_sum == o.logs_indexed_30day_sum &&
          logs_indexed_360day_sum == o.logs_indexed_360day_sum &&
          logs_indexed_3day_sum == o.logs_indexed_3day_sum &&
          logs_indexed_45day_sum == o.logs_indexed_45day_sum &&
          logs_indexed_60day_sum == o.logs_indexed_60day_sum &&
          logs_indexed_7day_sum == o.logs_indexed_7day_sum &&
          logs_indexed_90day_sum == o.logs_indexed_90day_sum &&
          logs_indexed_custom_retention_sum == o.logs_indexed_custom_retention_sum &&
          logs_indexed_sum == o.logs_indexed_sum &&
          logs_ingested_sum == o.logs_ingested_sum &&
          network_device_sum == o.network_device_sum &&
          network_device_top99p == o.network_device_top99p &&
          npm_flow_sum == o.npm_flow_sum &&
          npm_host_sum == o.npm_host_sum &&
          npm_host_top99p == o.npm_host_top99p &&
          observability_pipeline_sum == o.observability_pipeline_sum &&
          online_archive_sum == o.online_archive_sum &&
          prof_container_sum == o.prof_container_sum &&
          prof_host_sum == o.prof_host_sum &&
          prof_host_top99p == o.prof_host_top99p &&
          rum_lite_sum == o.rum_lite_sum &&
          rum_replay_sum == o.rum_replay_sum &&
          rum_sum == o.rum_sum &&
          rum_units_sum == o.rum_units_sum &&
          sensitive_data_scanner_sum == o.sensitive_data_scanner_sum &&
          serverless_invocation_sum == o.serverless_invocation_sum &&
          siem_sum == o.siem_sum &&
          standard_timeseries_average == o.standard_timeseries_average &&
          synthetics_api_tests_sum == o.synthetics_api_tests_sum &&
          synthetics_browser_checks_sum == o.synthetics_browser_checks_sum &&
          timeseries_average == o.timeseries_average &&
          timeseries_sum == o.timeseries_sum
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [apm_fargate_average, apm_fargate_sum, apm_host_sum, apm_host_top99p, apm_profiler_host_sum, apm_profiler_host_top99p, apm_trace_search_sum, application_security_host_sum, ci_pipeline_indexed_spans_sum, ci_pipeline_maximum, ci_pipeline_sum, ci_test_indexed_spans_sum, ci_testing_maximum, ci_testing_sum, cspm_container_sum, cspm_host_sum, cspm_host_top99p, custom_event_sum, cws_container_sum, cws_host_sum, cws_host_top99p, dbm_host_sum, dbm_host_top99p, dbm_normalized_queries_average, dbm_normalized_queries_sum, fargate_container_apm_and_profiler_average, fargate_container_apm_and_profiler_sum, fargate_container_average, fargate_container_profiler_average, fargate_container_profiler_sum, fargate_container_sum, incident_management_maximum, incident_management_sum, infra_and_apm_host_sum, infra_and_apm_host_top99p, infra_container_sum, infra_host_sum, infra_host_top99p, ingested_spans_sum, ingested_timeseries_average, ingested_timeseries_sum, iot_sum, iot_top99p, lambda_function_average, lambda_function_sum, logs_indexed_15day_sum, logs_indexed_180day_sum, logs_indexed_30day_sum, logs_indexed_360day_sum, logs_indexed_3day_sum, logs_indexed_45day_sum, logs_indexed_60day_sum, logs_indexed_7day_sum, logs_indexed_90day_sum, logs_indexed_custom_retention_sum, logs_indexed_sum, logs_ingested_sum, network_device_sum, network_device_top99p, npm_flow_sum, npm_host_sum, npm_host_top99p, observability_pipeline_sum, online_archive_sum, prof_container_sum, prof_host_sum, prof_host_top99p, rum_lite_sum, rum_replay_sum, rum_sum, rum_units_sum, sensitive_data_scanner_sum, serverless_invocation_sum, siem_sum, standard_timeseries_average, synthetics_api_tests_sum, synthetics_browser_checks_sum, timeseries_average, timeseries_sum].hash
    end
  end
end
