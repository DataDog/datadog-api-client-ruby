# DatadogAPIClient::V1::UsageAttributionValues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_percentage** | **Float** | The percentage of synthetic API test usage by tag(s). | [optional] |
| **api_usage** | **Float** | The synthetic API test usage by tag(s). | [optional] |
| **apm_host_percentage** | **Float** | The percentage of APM host usage by tag(s). | [optional] |
| **apm_host_usage** | **Float** | The APM host usage by tag(s). | [optional] |
| **browser_percentage** | **Float** | The percentage of synthetic browser test usage by tag(s). | [optional] |
| **browser_usage** | **Float** | The synthetic browser test usage by tag(s). | [optional] |
| **container_percentage** | **Float** | The percentage of container usage by tag(s). | [optional] |
| **container_usage** | **Float** | The container usage by tag(s). | [optional] |
| **cspm_container_percentage** | **Float** | The percentage of Cloud Security Posture Management container usage by tag(s) | [optional] |
| **cspm_container_usage** | **Float** | The Cloud Security Posture Management container usage by tag(s) | [optional] |
| **cspm_host_percentage** | **Float** | The percentage of Cloud Security Posture Management host usage by tag(s) | [optional] |
| **cspm_host_usage** | **Float** | The Cloud Security Posture Management host usage by tag(s) | [optional] |
| **custom_timeseries_percentage** | **Float** | The percentage of custom metrics usage by tag(s). | [optional] |
| **custom_timeseries_usage** | **Float** | The custom metrics usage by tag(s). | [optional] |
| **cws_container_percentage** | **Float** | The percentage of Cloud Workload Security container usage by tag(s) | [optional] |
| **cws_container_usage** | **Float** | The Cloud Workload Security container usage by tag(s) | [optional] |
| **cws_host_percentage** | **Float** | The percentage of Cloud Workload Security host usage by tag(s) | [optional] |
| **cws_host_usage** | **Float** | The Cloud Workload Security host usage by tag(s) | [optional] |
| **dbm_hosts_percentage** | **Float** | The percentage of Database Monitoring host usage by tag(s). | [optional] |
| **dbm_hosts_usage** | **Float** | The Database Monitoring host usage by tag(s). | [optional] |
| **dbm_queries_percentage** | **Float** | The percentage of Database Monitoring normalized queries usage by tag(s). | [optional] |
| **dbm_queries_usage** | **Float** | The Database Monitoring normalized queries usage by tag(s). | [optional] |
| **infra_host_percentage** | **Float** | The percentage of infrastructure host usage by tag(s). | [optional] |
| **infra_host_usage** | **Float** | The infrastructure host usage by tag(s). | [optional] |
| **lambda_functions_percentage** | **Float** | The percentage of Lambda function usage by tag(s). | [optional] |
| **lambda_functions_usage** | **Float** | The Lambda function usage by tag(s). | [optional] |
| **lambda_invocations_percentage** | **Float** | The percentage of Lambda invocation usage by tag(s). | [optional] |
| **lambda_invocations_usage** | **Float** | The Lambda invocation usage by tag(s). | [optional] |
| **lambda_percentage** | **Float** | The percentage of Lambda function usage by tag(s).  **Note** this field is deprecated. Use lambda_functions_percentage instead. | [optional] |
| **lambda_usage** | **Float** | The Lambda function usage by tag(s).  **Note** this field is deprecated. Use lambda_functions_usage instead. | [optional] |
| **npm_host_percentage** | **Float** | The percentage of network host usage by tag(s). | [optional] |
| **npm_host_usage** | **Float** | The network host usage by tag(s). | [optional] |
| **profiled_container_percentage** | **Float** | The percentage of profiled containers usage by tag(s). | [optional] |
| **profiled_container_usage** | **Float** | The profiled container usage by tag(s). | [optional] |
| **profiled_hosts_percentage** | **Float** | The percentage of profiled hosts usage by tag(s). | [optional] |
| **profiled_hosts_usage** | **Float** | The profiled host usage by tag(s). | [optional] |
| **snmp_percentage** | **Float** | The percentage of network device usage by tag(s). | [optional] |
| **snmp_usage** | **Float** | The network device usage by tag(s). | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAttributionValues.new(
  api_percentage: null,
  api_usage: null,
  apm_host_percentage: null,
  apm_host_usage: null,
  browser_percentage: null,
  browser_usage: null,
  container_percentage: null,
  container_usage: null,
  cspm_container_percentage: null,
  cspm_container_usage: null,
  cspm_host_percentage: null,
  cspm_host_usage: null,
  custom_timeseries_percentage: null,
  custom_timeseries_usage: null,
  cws_container_percentage: null,
  cws_container_usage: null,
  cws_host_percentage: null,
  cws_host_usage: null,
  dbm_hosts_percentage: null,
  dbm_hosts_usage: null,
  dbm_queries_percentage: null,
  dbm_queries_usage: null,
  infra_host_percentage: null,
  infra_host_usage: null,
  lambda_functions_percentage: null,
  lambda_functions_usage: null,
  lambda_invocations_percentage: null,
  lambda_invocations_usage: null,
  lambda_percentage: null,
  lambda_usage: null,
  npm_host_percentage: null,
  npm_host_usage: null,
  profiled_container_percentage: null,
  profiled_container_usage: null,
  profiled_hosts_percentage: null,
  profiled_hosts_usage: null,
  snmp_percentage: null,
  snmp_usage: null
)
```

