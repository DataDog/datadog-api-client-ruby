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
  # Supported products for hourly usage attribution requests.
  class HourlyUsageAttributionUsageType
    include BaseEnumModel

    API_USAGE = "api_usage".freeze
    APM_HOST_USAGE = "apm_host_usage".freeze
    APPSEC_USAGE = "appsec_usage".freeze
    BROWSER_USAGE = "browser_usage".freeze
    CONTAINER_USAGE = "container_usage".freeze
    CSPM_CONTAINERS_USAGE = "cspm_containers_usage".freeze
    CSPM_HOSTS_USAGE = "cspm_hosts_usage".freeze
    CUSTOM_TIMESERIES_USAGE = "custom_timeseries_usage".freeze
    CWS_CONTAINERS_USAGE = "cws_containers_usage".freeze
    CWS_HOSTS_USAGE = "cws_hosts_usage".freeze
    DBM_HOSTS_USAGE = "dbm_hosts_usage".freeze
    DBM_QUERIES_USAGE = "dbm_queries_usage".freeze
    ESTIMATED_INDEXED_LOGS_USAGE = "estimated_indexed_logs_usage".freeze
    ESTIMATED_INGESTED_LOGS_USAGE = "estimated_ingested_logs_usage".freeze
    ESTIMATED_INDEXED_SPANS_USAGE = "estimated_indexed_spans_usage".freeze
    ESTIMATED_INGESTED_SPANS_USAGE = "estimated_ingested_spans_usage".freeze
    FARGATE_USAGE = "fargate_usage".freeze
    FUNCTIONS_USAGE = "functions_usage".freeze
    INDEXED_LOGS_USAGE = "indexed_logs_usage".freeze
    INFRA_HOST_USAGE = "infra_host_usage".freeze
    INVOCATIONS_USAGE = "invocations_usage".freeze
    NPM_HOST_USAGE = "npm_host_usage".freeze
    PROFILED_CONTAINER_USAGE = "profiled_container_usage".freeze
    PROFILED_HOST_USAGE = "profiled_host_usage".freeze
    SNMP_USAGE = "snmp_usage".freeze
  end
end
