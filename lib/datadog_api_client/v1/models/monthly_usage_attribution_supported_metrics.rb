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
  # Supported metrics for monthly usage attribution requests.
  class MonthlyUsageAttributionSupportedMetrics
    include BaseEnumModel

    API_USAGE = "api_usage".freeze
    API_PERCENTAGE = "api_percentage".freeze
    APM_FARGATE_USAGE = "apm_fargate_usage".freeze
    APM_FARGATE_PERCENTAGE = "apm_fargate_percentage".freeze
    APPSEC_FARGATE_USAGE = "appsec_fargate_usage".freeze
    APPSEC_FARGATE_PERCENTAGE = "appsec_fargate_percentage".freeze
    APM_HOST_USAGE = "apm_host_usage".freeze
    APM_HOST_PERCENTAGE = "apm_host_percentage".freeze
    APM_USM_USAGE = "apm_usm_usage".freeze
    APM_USM_PERCENTAGE = "apm_usm_percentage".freeze
    APPSEC_USAGE = "appsec_usage".freeze
    APPSEC_PERCENTAGE = "appsec_percentage".freeze
    BROWSER_USAGE = "browser_usage".freeze
    BROWSER_PERCENTAGE = "browser_percentage".freeze
    CI_VISIBILITY_ITR_USAGE = "ci_visibility_itr_usage".freeze
    CI_VISIBILITY_ITR_PERCENTAGE = "ci_visibility_itr_percentage".freeze
    CONTAINER_EXCL_AGENT_USAGE = "container_excl_agent_usage".freeze
    CONTAINER_EXCL_AGENT_PERCENTAGE = "container_excl_agent_percentage".freeze
    CONTAINER_USAGE = "container_usage".freeze
    CONTAINER_PERCENTAGE = "container_percentage".freeze
    CSPM_CONTAINERS_PERCENTAGE = "cspm_containers_percentage".freeze
    CSPM_CONTAINERS_USAGE = "cspm_containers_usage".freeze
    CSPM_HOSTS_PERCENTAGE = "cspm_hosts_percentage".freeze
    CSPM_HOSTS_USAGE = "cspm_hosts_usage".freeze
    CUSTOM_TIMESERIES_USAGE = "custom_timeseries_usage".freeze
    CUSTOM_TIMESERIES_PERCENTAGE = "custom_timeseries_percentage".freeze
    CUSTOM_INGESTED_TIMESERIES_USAGE = "custom_ingested_timeseries_usage".freeze
    CUSTOM_INGESTED_TIMESERIES_PERCENTAGE = "custom_ingested_timeseries_percentage".freeze
    CWS_CONTAINERS_PERCENTAGE = "cws_containers_percentage".freeze
    CWS_CONTAINERS_USAGE = "cws_containers_usage".freeze
    CWS_HOSTS_PERCENTAGE = "cws_hosts_percentage".freeze
    CWS_HOSTS_USAGE = "cws_hosts_usage".freeze
    DBM_HOSTS_PERCENTAGE = "dbm_hosts_percentage".freeze
    DBM_HOSTS_USAGE = "dbm_hosts_usage".freeze
    DBM_QUERIES_PERCENTAGE = "dbm_queries_percentage".freeze
    DBM_QUERIES_USAGE = "dbm_queries_usage".freeze
    ESTIMATED_INDEXED_LOGS_USAGE = "estimated_indexed_logs_usage".freeze
    ESTIMATED_INDEXED_LOGS_PERCENTAGE = "estimated_indexed_logs_percentage".freeze
    ESTIMATED_INGESTED_LOGS_USAGE = "estimated_ingested_logs_usage".freeze
    ESTIMATED_INGESTED_LOGS_PERCENTAGE = "estimated_ingested_logs_percentage".freeze
    ESTIMATED_INDEXED_SPANS_USAGE = "estimated_indexed_spans_usage".freeze
    ESTIMATED_INDEXED_SPANS_PERCENTAGE = "estimated_indexed_spans_percentage".freeze
    ESTIMATED_INGESTED_SPANS_USAGE = "estimated_ingested_spans_usage".freeze
    ESTIMATED_INGESTED_SPANS_PERCENTAGE = "estimated_ingested_spans_percentage".freeze
    FARGATE_USAGE = "fargate_usage".freeze
    FARGATE_PERCENTAGE = "fargate_percentage".freeze
    FUNCTIONS_USAGE = "functions_usage".freeze
    FUNCTIONS_PERCENTAGE = "functions_percentage".freeze
    INFRA_HOST_USAGE = "infra_host_usage".freeze
    INFRA_HOST_PERCENTAGE = "infra_host_percentage".freeze
    INVOCATIONS_USAGE = "invocations_usage".freeze
    INVOCATIONS_PERCENTAGE = "invocations_percentage".freeze
    MOBILE_APP_TESTING_USAGE = "mobile_app_testing_percentage".freeze
    MOBILE_APP_TESTING_PERCENTAGE = "mobile_app_testing_usage".freeze
    NPM_HOST_USAGE = "npm_host_usage".freeze
    NPM_HOST_PERCENTAGE = "npm_host_percentage".freeze
    OBS_PIPELINE_BYTES_USAGE = "obs_pipeline_bytes_usage".freeze
    OBS_PIPELINE_BYTES_PERCENTAGE = "obs_pipeline_bytes_percentage".freeze
    PROFILED_CONTAINER_USAGE = "profiled_container_usage".freeze
    PROFILED_CONTAINER_PERCENTAGE = "profiled_container_percentage".freeze
    PROFILED_FARGATE_USAGE = "profiled_fargate_usage".freeze
    PROFILED_FARGATE_PERCENTAGE = "profiled_fargate_percentage".freeze
    PROFILED_HOST_USAGE = "profiled_host_usage".freeze
    PROFILED_HOST_PERCENTAGE = "profiled_host_percentage".freeze
    SERVERLESS_APPS_USAGE = "serverless_apps_usage".freeze
    SERVERLESS_APPS_PERCENTAGE = "serverless_apps_percentage".freeze
    SNMP_USAGE = "snmp_usage".freeze
    SNMP_PERCENTAGE = "snmp_percentage".freeze
    ESTIMATED_RUM_SESSIONS_USAGE = "estimated_rum_sessions_usage".freeze
    ESTIMATED_RUM_SESSIONS_PERCENTAGE = "estimated_rum_sessions_percentage".freeze
    UNIVERSAL_SERVICE_MONITORING_USAGE = "universal_service_monitoring_usage".freeze
    UNIVERSAL_SERVICE_MONITORING_PERCENTAGE = "universal_service_monitoring_percentage".freeze
    VULN_MANAGEMENT_HOSTS_USAGE = "vuln_management_hosts_usage".freeze
    VULN_MANAGEMENT_HOSTS_PERCENTAGE = "vuln_management_hosts_percentage".freeze
    SDS_SCANNED_BYTES_USAGE = "sds_scanned_bytes_usage".freeze
    SDS_SCANNED_BYTES_PERCENTAGE = "sds_scanned_bytes_percentage".freeze
    ALL = "*".freeze
  end
end
