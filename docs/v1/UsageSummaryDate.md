# DatadogAPIClient::V1::UsageSummaryDate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_host_top99p** | **Integer** | Shows the 99th percentile of all agent hosts over all hours in the current date for all organizations. | [optional] |
| **apm_host_top99p** | **Integer** | Shows the 99th percentile of all distinct APM hosts over all hours in the current date for all organizations. | [optional] |
| **aws_host_top99p** | **Integer** | Shows the 99th percentile of all AWS hosts over all hours in the current date for all organizations. | [optional] |
| **aws_lambda_func_count** | **Integer** | Shows the average of the number of functions that executed 1 or more times each hour in the current date for all organizations. | [optional] |
| **aws_lambda_invocations_sum** | **Integer** | Shows the sum of all AWS Lambda invocations over all hours in the current date for all organizations. | [optional] |
| **azure_app_service_top99p** | **Integer** | Shows the 99th percentile of all Azure app services over all hours in the current date for all organizations. | [optional] |
| **billable_ingested_bytes_sum** | **Integer** | Shows the sum of all log bytes ingested over all hours in the current date for all organizations. | [optional] |
| **container_avg** | **Integer** | Shows the average of all distinct containers over all hours in the current date for all organizations. | [optional] |
| **container_hwm** | **Integer** | Shows the high-water mark of all distinct containers over all hours in the current date for all organizations. | [optional] |
| **custom_ts_avg** | **Integer** | Shows the average number of distinct custom metrics over all hours in the current date for all organizations. | [optional] |
| **date** | **Time** | The date for the usage. | [optional] |
| **fargate_tasks_count_avg** | **Integer** | Shows the high-watermark of all Fargate tasks over all hours in the current date for all organizations. | [optional] |
| **fargate_tasks_count_hwm** | **Integer** | Shows the average of all Fargate tasks over all hours in the current date for all organizations. | [optional] |
| **gcp_host_top99p** | **Integer** | Shows the 99th percentile of all GCP hosts over all hours in the current date for all organizations. | [optional] |
| **incident_management_monthly_active_users_hwm** | **Integer** | Shows the high-water mark of incident management monthly active users over all hours in the current date for all organizations. | [optional] |
| **indexed_events_count_sum** | **Integer** | Shows the sum of all log events indexed over all hours in the current date for all organizations. | [optional] |
| **infra_host_top99p** | **Integer** | Shows the 99th percentile of all distinct infrastructure hosts over all hours in the current date for all organizations. | [optional] |
| **ingested_events_bytes_sum** | **Integer** | Shows the sum of all log bytes ingested over all hours in the current date for all organizations. | [optional] |
| **mobile_rum_session_count_android_sum** | **Integer** | Shows the sum of all mobile RUM Sessions on Android over all hours in the current date for all organizations. | [optional] |
| **mobile_rum_session_count_ios_sum** | **Integer** | Shows the sum of all mobile RUM Sessions on iOS over all hours in the current date for all organizations. | [optional] |
| **mobile_rum_session_count_sum** | **Integer** | Shows the sum of all mobile RUM Sessions over all hours in the current date for all organizations | [optional] |
| **netflow_indexed_events_count_sum** | **Integer** | Shows the sum of all Network flows indexed over all hours in the current date for all organizations. | [optional] |
| **npm_host_top99p** | **Integer** | Shows the 99th percentile of all distinct Networks hosts over all hours in the current date for all organizations. | [optional] |
| **orgs** | [**Array&lt;UsageSummaryDateOrg&gt;**](UsageSummaryDateOrg.md) | Organizations associated with a user. | [optional] |
| **profiling_host_top99p** | **Integer** | Shows the 99th percentile of all profiled hosts over all hours in the current date for all organizations. | [optional] |
| **rum_session_count_sum** | **Integer** | Shows the sum of all browser RUM Sessions over all hours in the current date for all organizations | [optional] |
| **rum_total_session_count_sum** | **Integer** | Shows the sum of RUM Sessions (browser and mobile) over all hours in the current date for all organizations. | [optional] |
| **synthetics_browser_check_calls_count_sum** | **Integer** | Shows the sum of all Synthetic browser tests over all hours in the current date for all organizations. | [optional] |
| **synthetics_check_calls_count_sum** | **Integer** | Shows the sum of all Synthetic API tests over all hours in the current date for all organizations. | [optional] |
| **trace_search_indexed_events_count_sum** | **Integer** | Shows the sum of all Indexed Spans indexed over all hours in the current date for all organizations. | [optional] |
| **twol_ingested_events_bytes_sum** | **Integer** | Shows the sum of all tracing without limits bytes ingested over all hours in the current date for all organizations. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSummaryDate.new(
  agent_host_top99p: null,
  apm_host_top99p: null,
  aws_host_top99p: null,
  aws_lambda_func_count: null,
  aws_lambda_invocations_sum: null,
  azure_app_service_top99p: null,
  billable_ingested_bytes_sum: null,
  container_avg: null,
  container_hwm: null,
  custom_ts_avg: null,
  date: null,
  fargate_tasks_count_avg: null,
  fargate_tasks_count_hwm: null,
  gcp_host_top99p: null,
  incident_management_monthly_active_users_hwm: null,
  indexed_events_count_sum: null,
  infra_host_top99p: null,
  ingested_events_bytes_sum: null,
  mobile_rum_session_count_android_sum: null,
  mobile_rum_session_count_ios_sum: null,
  mobile_rum_session_count_sum: null,
  netflow_indexed_events_count_sum: null,
  npm_host_top99p: null,
  orgs: null,
  profiling_host_top99p: null,
  rum_session_count_sum: null,
  rum_total_session_count_sum: null,
  synthetics_browser_check_calls_count_sum: null,
  synthetics_check_calls_count_sum: null,
  trace_search_indexed_events_count_sum: null,
  twol_ingested_events_bytes_sum: null
)
```

