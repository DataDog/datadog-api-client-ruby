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
  # Response with hourly report of all data billed by Datadog all organizations.
  class UsageSummaryDate
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Shows the 99th percentile of all agent hosts over all hours in the current date for all organizations.
    attr_accessor :agent_host_top99p

    # Shows the 99th percentile of all Azure app services using APM over all hours in the current date all organizations.
    attr_accessor :apm_azure_app_service_host_top99p

    # Shows the 99th percentile of all distinct APM hosts over all hours in the current date for all organizations.
    attr_accessor :apm_host_top99p

    # Shows the sum of all ingested APM span bytes over all hours in the current date for all organizations.
    attr_accessor :apm_ingested_spans_billable_bytes_sum

    # Shows the sum of audit logs lines indexed over all hours in the current date for all organizations.
    attr_accessor :audit_logs_lines_indexed_sum

    # The average profiled task count for Fargate Profiling.
    attr_accessor :avg_profiled_fargate_tasks

    # Shows the 99th percentile of all AWS hosts over all hours in the current date for all organizations.
    attr_accessor :aws_host_top99p

    # Shows the average of the number of functions that executed 1 or more times each hour in the current date for all organizations.
    attr_accessor :aws_lambda_func_count

    # Shows the sum of all AWS Lambda invocations over all hours in the current date for all organizations.
    attr_accessor :aws_lambda_invocations_sum

    # Shows the 99th percentile of all Azure app services over all hours in the current date for all organizations.
    attr_accessor :azure_app_service_top99p

    # Shows the sum of all log bytes ingested over all hours in the current date for all organizations.
    attr_accessor :billable_ingested_bytes_sum

    # Shows the sum of all browser lite sessions over all hours in the current date for all organizations.
    attr_accessor :browser_rum_lite_session_count_sum

    # Shows the sum of all browser replay sessions over all hours in the current date for all organizations.
    attr_accessor :browser_rum_replay_session_count_sum

    # Shows the sum of all browser RUM units over all hours in the current date for all organizations.
    attr_accessor :browser_rum_units_sum

    # Shows the sum of all CI pipeline indexed spans over all hours in the current month for all organizations.
    attr_accessor :ci_pipeline_indexed_spans_sum

    # Shows the sum of all CI test indexed spans over all hours in the current month for all organizations.
    attr_accessor :ci_test_indexed_spans_sum

    # Shows the high-water mark of all CI visibility pipeline committers over all hours in the current month for all organizations.
    attr_accessor :ci_visibility_pipeline_committers_hwm

    # Shows the high-water mark of all CI visibility test committers over all hours in the current month for all organizations.
    attr_accessor :ci_visibility_test_committers_hwm

    # Shows the average of all distinct containers over all hours in the current date for all organizations.
    attr_accessor :container_avg

    # Shows the high-water mark of all distinct containers over all hours in the current date for all organizations.
    attr_accessor :container_hwm

    # Shows the 99th percentile of all Cloud Security Posture Management Azure app services hosts over all hours in the current date for all organizations.
    attr_accessor :cspm_aas_host_top99p

    # Shows the 99th percentile of all Cloud Security Posture Management Azure hosts over all hours in the current date for all organizations.
    attr_accessor :cspm_azure_host_top99p

    # Shows the average number of Cloud Security Posture Management containers over all hours in the current date for all organizations.
    attr_accessor :cspm_container_avg

    # Shows the high-water mark of Cloud Security Posture Management containers over all hours in the current date for all organizations.
    attr_accessor :cspm_container_hwm

    # Shows the 99th percentile of all Cloud Security Posture Management hosts over all hours in the current date for all organizations.
    attr_accessor :cspm_host_top99p

    # Shows the average number of distinct custom metrics over all hours in the current date for all organizations.
    attr_accessor :custom_ts_avg

    # Shows the average of all distinct Cloud Workload Security containers over all hours in the current date for all organizations.
    attr_accessor :cws_container_count_avg

    # Shows the 99th percentile of all Cloud Workload Security hosts over all hours in the current date for all organizations.
    attr_accessor :cws_host_top99p

    # The date for the usage.
    attr_accessor :date

    # Shows the 99th percentile of all Database Monitoring hosts over all hours in the current date for all organizations.
    attr_accessor :dbm_host_top99p

    # Shows the average of all normalized Database Monitoring queries over all hours in the current date for all organizations.
    attr_accessor :dbm_queries_count_avg

    # Shows the high-watermark of all Fargate tasks over all hours in the current date for all organizations.
    attr_accessor :fargate_tasks_count_avg

    # Shows the average of all Fargate tasks over all hours in the current date for all organizations.
    attr_accessor :fargate_tasks_count_hwm

    # Shows the 99th percentile of all GCP hosts over all hours in the current date for all organizations.
    attr_accessor :gcp_host_top99p

    # Shows the 99th percentile of all Heroku dynos over all hours in the current date for all organizations.
    attr_accessor :heroku_host_top99p

    # Shows the high-water mark of incident management monthly active users over all hours in the current date for all organizations.
    attr_accessor :incident_management_monthly_active_users_hwm

    # Shows the sum of all log events indexed over all hours in the current date for all organizations.
    attr_accessor :indexed_events_count_sum

    # Shows the 99th percentile of all distinct infrastructure hosts over all hours in the current date for all organizations.
    attr_accessor :infra_host_top99p

    # Shows the sum of all log bytes ingested over all hours in the current date for all organizations.
    attr_accessor :ingested_events_bytes_sum

    # Shows the sum of all IoT devices over all hours in the current date for all organizations.
    attr_accessor :iot_device_sum

    # Shows the 99th percentile of all IoT devices over all hours in the current date all organizations.
    attr_accessor :iot_device_top99p

    # Shows the sum of all mobile lite sessions over all hours in the current date for all organizations.
    attr_accessor :mobile_rum_lite_session_count_sum

    # Shows the sum of all mobile RUM Sessions on Android over all hours in the current date for all organizations.
    attr_accessor :mobile_rum_session_count_android_sum

    # Shows the sum of all mobile RUM Sessions on iOS over all hours in the current date for all organizations.
    attr_accessor :mobile_rum_session_count_ios_sum

    # Shows the sum of all mobile RUM Sessions over all hours in the current date for all organizations
    attr_accessor :mobile_rum_session_count_sum

    # Shows the sum of all mobile RUM units over all hours in the current date for all organizations.
    attr_accessor :mobile_rum_units_sum

    # Shows the sum of all Network flows indexed over all hours in the current date for all organizations.
    attr_accessor :netflow_indexed_events_count_sum

    # Shows the 99th percentile of all distinct Networks hosts over all hours in the current date for all organizations.
    attr_accessor :npm_host_top99p

    # Sum of all online archived events over all hours in the current date for all organizations.
    attr_accessor :online_archive_events_count_sum

    # Shows the 99th percentile of all hosts reported by the Datadog exporter for the OpenTelemetry Collector over all hours in the current date for all organizations.
    attr_accessor :opentelemetry_host_top99p

    # Organizations associated with a user.
    attr_accessor :orgs

    # Shows the 99th percentile of all profiled hosts over all hours in the current date for all organizations.
    attr_accessor :profiling_host_top99p

    # Shows the sum of all mobile sessions and all browser lite and legacy sessions over all hours in the current month for all organizations.
    attr_accessor :rum_browser_and_mobile_session_count

    # Shows the sum of all browser RUM Lite Sessions over all hours in the current date for all organizations
    attr_accessor :rum_session_count_sum

    # Shows the sum of RUM Sessions (browser and mobile) over all hours in the current date for all organizations.
    attr_accessor :rum_total_session_count_sum

    # Shows the sum of all browser and mobile RUM units over all hours in the current date for all organizations.
    attr_accessor :rum_units_sum

    # Shows the sum of all bytes scanned of logs usage by the Sensitive Data Scanner over all hours in the current month for all organizations.
    attr_accessor :sds_logs_scanned_bytes_sum

    # Shows the sum of all bytes scanned across all usage types by the Sensitive Data Scanner over all hours in the current month for all organizations.
    attr_accessor :sds_total_scanned_bytes_sum

    # Shows the sum of all Synthetic browser tests over all hours in the current date for all organizations.
    attr_accessor :synthetics_browser_check_calls_count_sum

    # Shows the sum of all Synthetic API tests over all hours in the current date for all organizations.
    attr_accessor :synthetics_check_calls_count_sum

    # Shows the sum of all Indexed Spans indexed over all hours in the current date for all organizations.
    attr_accessor :trace_search_indexed_events_count_sum

    # Shows the sum of all tracing without limits bytes ingested over all hours in the current date for all organizations.
    attr_accessor :twol_ingested_events_bytes_sum

    # Shows the 99th percentile of all vSphere hosts over all hours in the current date for all organizations.
    attr_accessor :vsphere_host_top99p

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'agent_host_top99p' => :'agent_host_top99p',
        :'apm_azure_app_service_host_top99p' => :'apm_azure_app_service_host_top99p',
        :'apm_host_top99p' => :'apm_host_top99p',
        :'apm_ingested_spans_billable_bytes_sum' => :'apm_ingested_spans_billable_bytes_sum',
        :'audit_logs_lines_indexed_sum' => :'audit_logs_lines_indexed_sum',
        :'avg_profiled_fargate_tasks' => :'avg_profiled_fargate_tasks',
        :'aws_host_top99p' => :'aws_host_top99p',
        :'aws_lambda_func_count' => :'aws_lambda_func_count',
        :'aws_lambda_invocations_sum' => :'aws_lambda_invocations_sum',
        :'azure_app_service_top99p' => :'azure_app_service_top99p',
        :'billable_ingested_bytes_sum' => :'billable_ingested_bytes_sum',
        :'browser_rum_lite_session_count_sum' => :'browser_rum_lite_session_count_sum',
        :'browser_rum_replay_session_count_sum' => :'browser_rum_replay_session_count_sum',
        :'browser_rum_units_sum' => :'browser_rum_units_sum',
        :'ci_pipeline_indexed_spans_sum' => :'ci_pipeline_indexed_spans_sum',
        :'ci_test_indexed_spans_sum' => :'ci_test_indexed_spans_sum',
        :'ci_visibility_pipeline_committers_hwm' => :'ci_visibility_pipeline_committers_hwm',
        :'ci_visibility_test_committers_hwm' => :'ci_visibility_test_committers_hwm',
        :'container_avg' => :'container_avg',
        :'container_hwm' => :'container_hwm',
        :'cspm_aas_host_top99p' => :'cspm_aas_host_top99p',
        :'cspm_azure_host_top99p' => :'cspm_azure_host_top99p',
        :'cspm_container_avg' => :'cspm_container_avg',
        :'cspm_container_hwm' => :'cspm_container_hwm',
        :'cspm_host_top99p' => :'cspm_host_top99p',
        :'custom_ts_avg' => :'custom_ts_avg',
        :'cws_container_count_avg' => :'cws_container_count_avg',
        :'cws_host_top99p' => :'cws_host_top99p',
        :'date' => :'date',
        :'dbm_host_top99p' => :'dbm_host_top99p',
        :'dbm_queries_count_avg' => :'dbm_queries_count_avg',
        :'fargate_tasks_count_avg' => :'fargate_tasks_count_avg',
        :'fargate_tasks_count_hwm' => :'fargate_tasks_count_hwm',
        :'gcp_host_top99p' => :'gcp_host_top99p',
        :'heroku_host_top99p' => :'heroku_host_top99p',
        :'incident_management_monthly_active_users_hwm' => :'incident_management_monthly_active_users_hwm',
        :'indexed_events_count_sum' => :'indexed_events_count_sum',
        :'infra_host_top99p' => :'infra_host_top99p',
        :'ingested_events_bytes_sum' => :'ingested_events_bytes_sum',
        :'iot_device_sum' => :'iot_device_sum',
        :'iot_device_top99p' => :'iot_device_top99p',
        :'mobile_rum_lite_session_count_sum' => :'mobile_rum_lite_session_count_sum',
        :'mobile_rum_session_count_android_sum' => :'mobile_rum_session_count_android_sum',
        :'mobile_rum_session_count_ios_sum' => :'mobile_rum_session_count_ios_sum',
        :'mobile_rum_session_count_sum' => :'mobile_rum_session_count_sum',
        :'mobile_rum_units_sum' => :'mobile_rum_units_sum',
        :'netflow_indexed_events_count_sum' => :'netflow_indexed_events_count_sum',
        :'npm_host_top99p' => :'npm_host_top99p',
        :'online_archive_events_count_sum' => :'online_archive_events_count_sum',
        :'opentelemetry_host_top99p' => :'opentelemetry_host_top99p',
        :'orgs' => :'orgs',
        :'profiling_host_top99p' => :'profiling_host_top99p',
        :'rum_browser_and_mobile_session_count' => :'rum_browser_and_mobile_session_count',
        :'rum_session_count_sum' => :'rum_session_count_sum',
        :'rum_total_session_count_sum' => :'rum_total_session_count_sum',
        :'rum_units_sum' => :'rum_units_sum',
        :'sds_logs_scanned_bytes_sum' => :'sds_logs_scanned_bytes_sum',
        :'sds_total_scanned_bytes_sum' => :'sds_total_scanned_bytes_sum',
        :'synthetics_browser_check_calls_count_sum' => :'synthetics_browser_check_calls_count_sum',
        :'synthetics_check_calls_count_sum' => :'synthetics_check_calls_count_sum',
        :'trace_search_indexed_events_count_sum' => :'trace_search_indexed_events_count_sum',
        :'twol_ingested_events_bytes_sum' => :'twol_ingested_events_bytes_sum',
        :'vsphere_host_top99p' => :'vsphere_host_top99p'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'agent_host_top99p' => :'Integer',
        :'apm_azure_app_service_host_top99p' => :'Integer',
        :'apm_host_top99p' => :'Integer',
        :'apm_ingested_spans_billable_bytes_sum' => :'Integer',
        :'audit_logs_lines_indexed_sum' => :'Integer',
        :'avg_profiled_fargate_tasks' => :'Integer',
        :'aws_host_top99p' => :'Integer',
        :'aws_lambda_func_count' => :'Integer',
        :'aws_lambda_invocations_sum' => :'Integer',
        :'azure_app_service_top99p' => :'Integer',
        :'billable_ingested_bytes_sum' => :'Integer',
        :'browser_rum_lite_session_count_sum' => :'Integer',
        :'browser_rum_replay_session_count_sum' => :'Integer',
        :'browser_rum_units_sum' => :'Integer',
        :'ci_pipeline_indexed_spans_sum' => :'Integer',
        :'ci_test_indexed_spans_sum' => :'Integer',
        :'ci_visibility_pipeline_committers_hwm' => :'Integer',
        :'ci_visibility_test_committers_hwm' => :'Integer',
        :'container_avg' => :'Integer',
        :'container_hwm' => :'Integer',
        :'cspm_aas_host_top99p' => :'Integer',
        :'cspm_azure_host_top99p' => :'Integer',
        :'cspm_container_avg' => :'Integer',
        :'cspm_container_hwm' => :'Integer',
        :'cspm_host_top99p' => :'Integer',
        :'custom_ts_avg' => :'Integer',
        :'cws_container_count_avg' => :'Integer',
        :'cws_host_top99p' => :'Integer',
        :'date' => :'Time',
        :'dbm_host_top99p' => :'Integer',
        :'dbm_queries_count_avg' => :'Integer',
        :'fargate_tasks_count_avg' => :'Integer',
        :'fargate_tasks_count_hwm' => :'Integer',
        :'gcp_host_top99p' => :'Integer',
        :'heroku_host_top99p' => :'Integer',
        :'incident_management_monthly_active_users_hwm' => :'Integer',
        :'indexed_events_count_sum' => :'Integer',
        :'infra_host_top99p' => :'Integer',
        :'ingested_events_bytes_sum' => :'Integer',
        :'iot_device_sum' => :'Integer',
        :'iot_device_top99p' => :'Integer',
        :'mobile_rum_lite_session_count_sum' => :'Integer',
        :'mobile_rum_session_count_android_sum' => :'Integer',
        :'mobile_rum_session_count_ios_sum' => :'Integer',
        :'mobile_rum_session_count_sum' => :'Integer',
        :'mobile_rum_units_sum' => :'Integer',
        :'netflow_indexed_events_count_sum' => :'Integer',
        :'npm_host_top99p' => :'Integer',
        :'online_archive_events_count_sum' => :'Integer',
        :'opentelemetry_host_top99p' => :'Integer',
        :'orgs' => :'Array<UsageSummaryDateOrg>',
        :'profiling_host_top99p' => :'Integer',
        :'rum_browser_and_mobile_session_count' => :'Integer',
        :'rum_session_count_sum' => :'Integer',
        :'rum_total_session_count_sum' => :'Integer',
        :'rum_units_sum' => :'Integer',
        :'sds_logs_scanned_bytes_sum' => :'Integer',
        :'sds_total_scanned_bytes_sum' => :'Integer',
        :'synthetics_browser_check_calls_count_sum' => :'Integer',
        :'synthetics_check_calls_count_sum' => :'Integer',
        :'trace_search_indexed_events_count_sum' => :'Integer',
        :'twol_ingested_events_bytes_sum' => :'Integer',
        :'vsphere_host_top99p' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageSummaryDate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageSummaryDate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'agent_host_top99p')
        self.agent_host_top99p = attributes[:'agent_host_top99p']
      end

      if attributes.key?(:'apm_azure_app_service_host_top99p')
        self.apm_azure_app_service_host_top99p = attributes[:'apm_azure_app_service_host_top99p']
      end

      if attributes.key?(:'apm_host_top99p')
        self.apm_host_top99p = attributes[:'apm_host_top99p']
      end

      if attributes.key?(:'apm_ingested_spans_billable_bytes_sum')
        self.apm_ingested_spans_billable_bytes_sum = attributes[:'apm_ingested_spans_billable_bytes_sum']
      end

      if attributes.key?(:'audit_logs_lines_indexed_sum')
        self.audit_logs_lines_indexed_sum = attributes[:'audit_logs_lines_indexed_sum']
      end

      if attributes.key?(:'avg_profiled_fargate_tasks')
        self.avg_profiled_fargate_tasks = attributes[:'avg_profiled_fargate_tasks']
      end

      if attributes.key?(:'aws_host_top99p')
        self.aws_host_top99p = attributes[:'aws_host_top99p']
      end

      if attributes.key?(:'aws_lambda_func_count')
        self.aws_lambda_func_count = attributes[:'aws_lambda_func_count']
      end

      if attributes.key?(:'aws_lambda_invocations_sum')
        self.aws_lambda_invocations_sum = attributes[:'aws_lambda_invocations_sum']
      end

      if attributes.key?(:'azure_app_service_top99p')
        self.azure_app_service_top99p = attributes[:'azure_app_service_top99p']
      end

      if attributes.key?(:'billable_ingested_bytes_sum')
        self.billable_ingested_bytes_sum = attributes[:'billable_ingested_bytes_sum']
      end

      if attributes.key?(:'browser_rum_lite_session_count_sum')
        self.browser_rum_lite_session_count_sum = attributes[:'browser_rum_lite_session_count_sum']
      end

      if attributes.key?(:'browser_rum_replay_session_count_sum')
        self.browser_rum_replay_session_count_sum = attributes[:'browser_rum_replay_session_count_sum']
      end

      if attributes.key?(:'browser_rum_units_sum')
        self.browser_rum_units_sum = attributes[:'browser_rum_units_sum']
      end

      if attributes.key?(:'ci_pipeline_indexed_spans_sum')
        self.ci_pipeline_indexed_spans_sum = attributes[:'ci_pipeline_indexed_spans_sum']
      end

      if attributes.key?(:'ci_test_indexed_spans_sum')
        self.ci_test_indexed_spans_sum = attributes[:'ci_test_indexed_spans_sum']
      end

      if attributes.key?(:'ci_visibility_pipeline_committers_hwm')
        self.ci_visibility_pipeline_committers_hwm = attributes[:'ci_visibility_pipeline_committers_hwm']
      end

      if attributes.key?(:'ci_visibility_test_committers_hwm')
        self.ci_visibility_test_committers_hwm = attributes[:'ci_visibility_test_committers_hwm']
      end

      if attributes.key?(:'container_avg')
        self.container_avg = attributes[:'container_avg']
      end

      if attributes.key?(:'container_hwm')
        self.container_hwm = attributes[:'container_hwm']
      end

      if attributes.key?(:'cspm_aas_host_top99p')
        self.cspm_aas_host_top99p = attributes[:'cspm_aas_host_top99p']
      end

      if attributes.key?(:'cspm_azure_host_top99p')
        self.cspm_azure_host_top99p = attributes[:'cspm_azure_host_top99p']
      end

      if attributes.key?(:'cspm_container_avg')
        self.cspm_container_avg = attributes[:'cspm_container_avg']
      end

      if attributes.key?(:'cspm_container_hwm')
        self.cspm_container_hwm = attributes[:'cspm_container_hwm']
      end

      if attributes.key?(:'cspm_host_top99p')
        self.cspm_host_top99p = attributes[:'cspm_host_top99p']
      end

      if attributes.key?(:'custom_ts_avg')
        self.custom_ts_avg = attributes[:'custom_ts_avg']
      end

      if attributes.key?(:'cws_container_count_avg')
        self.cws_container_count_avg = attributes[:'cws_container_count_avg']
      end

      if attributes.key?(:'cws_host_top99p')
        self.cws_host_top99p = attributes[:'cws_host_top99p']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'dbm_host_top99p')
        self.dbm_host_top99p = attributes[:'dbm_host_top99p']
      end

      if attributes.key?(:'dbm_queries_count_avg')
        self.dbm_queries_count_avg = attributes[:'dbm_queries_count_avg']
      end

      if attributes.key?(:'fargate_tasks_count_avg')
        self.fargate_tasks_count_avg = attributes[:'fargate_tasks_count_avg']
      end

      if attributes.key?(:'fargate_tasks_count_hwm')
        self.fargate_tasks_count_hwm = attributes[:'fargate_tasks_count_hwm']
      end

      if attributes.key?(:'gcp_host_top99p')
        self.gcp_host_top99p = attributes[:'gcp_host_top99p']
      end

      if attributes.key?(:'heroku_host_top99p')
        self.heroku_host_top99p = attributes[:'heroku_host_top99p']
      end

      if attributes.key?(:'incident_management_monthly_active_users_hwm')
        self.incident_management_monthly_active_users_hwm = attributes[:'incident_management_monthly_active_users_hwm']
      end

      if attributes.key?(:'indexed_events_count_sum')
        self.indexed_events_count_sum = attributes[:'indexed_events_count_sum']
      end

      if attributes.key?(:'infra_host_top99p')
        self.infra_host_top99p = attributes[:'infra_host_top99p']
      end

      if attributes.key?(:'ingested_events_bytes_sum')
        self.ingested_events_bytes_sum = attributes[:'ingested_events_bytes_sum']
      end

      if attributes.key?(:'iot_device_sum')
        self.iot_device_sum = attributes[:'iot_device_sum']
      end

      if attributes.key?(:'iot_device_top99p')
        self.iot_device_top99p = attributes[:'iot_device_top99p']
      end

      if attributes.key?(:'mobile_rum_lite_session_count_sum')
        self.mobile_rum_lite_session_count_sum = attributes[:'mobile_rum_lite_session_count_sum']
      end

      if attributes.key?(:'mobile_rum_session_count_android_sum')
        self.mobile_rum_session_count_android_sum = attributes[:'mobile_rum_session_count_android_sum']
      end

      if attributes.key?(:'mobile_rum_session_count_ios_sum')
        self.mobile_rum_session_count_ios_sum = attributes[:'mobile_rum_session_count_ios_sum']
      end

      if attributes.key?(:'mobile_rum_session_count_sum')
        self.mobile_rum_session_count_sum = attributes[:'mobile_rum_session_count_sum']
      end

      if attributes.key?(:'mobile_rum_units_sum')
        self.mobile_rum_units_sum = attributes[:'mobile_rum_units_sum']
      end

      if attributes.key?(:'netflow_indexed_events_count_sum')
        self.netflow_indexed_events_count_sum = attributes[:'netflow_indexed_events_count_sum']
      end

      if attributes.key?(:'npm_host_top99p')
        self.npm_host_top99p = attributes[:'npm_host_top99p']
      end

      if attributes.key?(:'online_archive_events_count_sum')
        self.online_archive_events_count_sum = attributes[:'online_archive_events_count_sum']
      end

      if attributes.key?(:'opentelemetry_host_top99p')
        self.opentelemetry_host_top99p = attributes[:'opentelemetry_host_top99p']
      end

      if attributes.key?(:'orgs')
        if (value = attributes[:'orgs']).is_a?(Array)
          self.orgs = value
        end
      end

      if attributes.key?(:'profiling_host_top99p')
        self.profiling_host_top99p = attributes[:'profiling_host_top99p']
      end

      if attributes.key?(:'rum_browser_and_mobile_session_count')
        self.rum_browser_and_mobile_session_count = attributes[:'rum_browser_and_mobile_session_count']
      end

      if attributes.key?(:'rum_session_count_sum')
        self.rum_session_count_sum = attributes[:'rum_session_count_sum']
      end

      if attributes.key?(:'rum_total_session_count_sum')
        self.rum_total_session_count_sum = attributes[:'rum_total_session_count_sum']
      end

      if attributes.key?(:'rum_units_sum')
        self.rum_units_sum = attributes[:'rum_units_sum']
      end

      if attributes.key?(:'sds_logs_scanned_bytes_sum')
        self.sds_logs_scanned_bytes_sum = attributes[:'sds_logs_scanned_bytes_sum']
      end

      if attributes.key?(:'sds_total_scanned_bytes_sum')
        self.sds_total_scanned_bytes_sum = attributes[:'sds_total_scanned_bytes_sum']
      end

      if attributes.key?(:'synthetics_browser_check_calls_count_sum')
        self.synthetics_browser_check_calls_count_sum = attributes[:'synthetics_browser_check_calls_count_sum']
      end

      if attributes.key?(:'synthetics_check_calls_count_sum')
        self.synthetics_check_calls_count_sum = attributes[:'synthetics_check_calls_count_sum']
      end

      if attributes.key?(:'trace_search_indexed_events_count_sum')
        self.trace_search_indexed_events_count_sum = attributes[:'trace_search_indexed_events_count_sum']
      end

      if attributes.key?(:'twol_ingested_events_bytes_sum')
        self.twol_ingested_events_bytes_sum = attributes[:'twol_ingested_events_bytes_sum']
      end

      if attributes.key?(:'vsphere_host_top99p')
        self.vsphere_host_top99p = attributes[:'vsphere_host_top99p']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
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
          agent_host_top99p == o.agent_host_top99p &&
          apm_azure_app_service_host_top99p == o.apm_azure_app_service_host_top99p &&
          apm_host_top99p == o.apm_host_top99p &&
          apm_ingested_spans_billable_bytes_sum == o.apm_ingested_spans_billable_bytes_sum &&
          audit_logs_lines_indexed_sum == o.audit_logs_lines_indexed_sum &&
          avg_profiled_fargate_tasks == o.avg_profiled_fargate_tasks &&
          aws_host_top99p == o.aws_host_top99p &&
          aws_lambda_func_count == o.aws_lambda_func_count &&
          aws_lambda_invocations_sum == o.aws_lambda_invocations_sum &&
          azure_app_service_top99p == o.azure_app_service_top99p &&
          billable_ingested_bytes_sum == o.billable_ingested_bytes_sum &&
          browser_rum_lite_session_count_sum == o.browser_rum_lite_session_count_sum &&
          browser_rum_replay_session_count_sum == o.browser_rum_replay_session_count_sum &&
          browser_rum_units_sum == o.browser_rum_units_sum &&
          ci_pipeline_indexed_spans_sum == o.ci_pipeline_indexed_spans_sum &&
          ci_test_indexed_spans_sum == o.ci_test_indexed_spans_sum &&
          ci_visibility_pipeline_committers_hwm == o.ci_visibility_pipeline_committers_hwm &&
          ci_visibility_test_committers_hwm == o.ci_visibility_test_committers_hwm &&
          container_avg == o.container_avg &&
          container_hwm == o.container_hwm &&
          cspm_aas_host_top99p == o.cspm_aas_host_top99p &&
          cspm_azure_host_top99p == o.cspm_azure_host_top99p &&
          cspm_container_avg == o.cspm_container_avg &&
          cspm_container_hwm == o.cspm_container_hwm &&
          cspm_host_top99p == o.cspm_host_top99p &&
          custom_ts_avg == o.custom_ts_avg &&
          cws_container_count_avg == o.cws_container_count_avg &&
          cws_host_top99p == o.cws_host_top99p &&
          date == o.date &&
          dbm_host_top99p == o.dbm_host_top99p &&
          dbm_queries_count_avg == o.dbm_queries_count_avg &&
          fargate_tasks_count_avg == o.fargate_tasks_count_avg &&
          fargate_tasks_count_hwm == o.fargate_tasks_count_hwm &&
          gcp_host_top99p == o.gcp_host_top99p &&
          heroku_host_top99p == o.heroku_host_top99p &&
          incident_management_monthly_active_users_hwm == o.incident_management_monthly_active_users_hwm &&
          indexed_events_count_sum == o.indexed_events_count_sum &&
          infra_host_top99p == o.infra_host_top99p &&
          ingested_events_bytes_sum == o.ingested_events_bytes_sum &&
          iot_device_sum == o.iot_device_sum &&
          iot_device_top99p == o.iot_device_top99p &&
          mobile_rum_lite_session_count_sum == o.mobile_rum_lite_session_count_sum &&
          mobile_rum_session_count_android_sum == o.mobile_rum_session_count_android_sum &&
          mobile_rum_session_count_ios_sum == o.mobile_rum_session_count_ios_sum &&
          mobile_rum_session_count_sum == o.mobile_rum_session_count_sum &&
          mobile_rum_units_sum == o.mobile_rum_units_sum &&
          netflow_indexed_events_count_sum == o.netflow_indexed_events_count_sum &&
          npm_host_top99p == o.npm_host_top99p &&
          online_archive_events_count_sum == o.online_archive_events_count_sum &&
          opentelemetry_host_top99p == o.opentelemetry_host_top99p &&
          orgs == o.orgs &&
          profiling_host_top99p == o.profiling_host_top99p &&
          rum_browser_and_mobile_session_count == o.rum_browser_and_mobile_session_count &&
          rum_session_count_sum == o.rum_session_count_sum &&
          rum_total_session_count_sum == o.rum_total_session_count_sum &&
          rum_units_sum == o.rum_units_sum &&
          sds_logs_scanned_bytes_sum == o.sds_logs_scanned_bytes_sum &&
          sds_total_scanned_bytes_sum == o.sds_total_scanned_bytes_sum &&
          synthetics_browser_check_calls_count_sum == o.synthetics_browser_check_calls_count_sum &&
          synthetics_check_calls_count_sum == o.synthetics_check_calls_count_sum &&
          trace_search_indexed_events_count_sum == o.trace_search_indexed_events_count_sum &&
          twol_ingested_events_bytes_sum == o.twol_ingested_events_bytes_sum &&
          vsphere_host_top99p == o.vsphere_host_top99p
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [agent_host_top99p, apm_azure_app_service_host_top99p, apm_host_top99p, apm_ingested_spans_billable_bytes_sum, audit_logs_lines_indexed_sum, avg_profiled_fargate_tasks, aws_host_top99p, aws_lambda_func_count, aws_lambda_invocations_sum, azure_app_service_top99p, billable_ingested_bytes_sum, browser_rum_lite_session_count_sum, browser_rum_replay_session_count_sum, browser_rum_units_sum, ci_pipeline_indexed_spans_sum, ci_test_indexed_spans_sum, ci_visibility_pipeline_committers_hwm, ci_visibility_test_committers_hwm, container_avg, container_hwm, cspm_aas_host_top99p, cspm_azure_host_top99p, cspm_container_avg, cspm_container_hwm, cspm_host_top99p, custom_ts_avg, cws_container_count_avg, cws_host_top99p, date, dbm_host_top99p, dbm_queries_count_avg, fargate_tasks_count_avg, fargate_tasks_count_hwm, gcp_host_top99p, heroku_host_top99p, incident_management_monthly_active_users_hwm, indexed_events_count_sum, infra_host_top99p, ingested_events_bytes_sum, iot_device_sum, iot_device_top99p, mobile_rum_lite_session_count_sum, mobile_rum_session_count_android_sum, mobile_rum_session_count_ios_sum, mobile_rum_session_count_sum, mobile_rum_units_sum, netflow_indexed_events_count_sum, npm_host_top99p, online_archive_events_count_sum, opentelemetry_host_top99p, orgs, profiling_host_top99p, rum_browser_and_mobile_session_count, rum_session_count_sum, rum_total_session_count_sum, rum_units_sum, sds_logs_scanned_bytes_sum, sds_total_scanned_bytes_sum, synthetics_browser_check_calls_count_sum, synthetics_check_calls_count_sum, trace_search_indexed_events_count_sum, twol_ingested_events_bytes_sum, vsphere_host_top99p].hash
    end
  end
end
