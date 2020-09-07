# DatadogAPIClient::V1::UsageSummaryDateOrg

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_host_top99p** | **Integer** | Shows the 99th percentile of all agent hosts over all hours in the current date for the given org. | [optional] 
**apm_host_top99p** | **Integer** | Shows the 99th percentile of all distinct APM hosts over all hours in the current date for the given org. | [optional] 
**aws_host_top99p** | **Integer** | Shows the 99th percentile of all AWS hosts over all hours in the current date for the given org. | [optional] 
**aws_lambda_func_count** | **Integer** | Shows the sum of all AWS Lambda invocations over all hours in the current date for the given org. | [optional] 
**aws_lambda_invocations_sum** | **Integer** | Shows the sum of all AWS Lambda invocations over all hours in the current date for the given org. | [optional] 
**billable_ingested_bytes_sum** | **Integer** | Shows the sum of all log bytes ingested over all hours in the current date for the given org. | [optional] 
**container_avg** | **Integer** | Shows the average of all distinct containers over all hours in the current date for the given org. | [optional] 
**container_hwm** | **Integer** | Shows the high watermark of all distinct containers over all hours in the current date for the given org. | [optional] 
**custom_ts_avg** | **Integer** | Shows the average number of distinct custom metrics over all hours in the current date for the given org. | [optional] 
**fargate_tasks_count_avg** | **Integer** | The average task count for Fargate. | [optional] 
**fargate_tasks_count_hwm** | **Integer** | Shows the high watermark of all Fargate tasks over all hours in the current date for the given org. | [optional] 
**gcp_host_top99p** | **Integer** | Shows the 99th percentile of all GCP hosts over all hours in the current date for the given org. | [optional] 
**id** | **String** | The organization id. | [optional] 
**indexed_events_count_sum** | **Integer** | Shows the sum of all log events indexed over all hours in the current date for the given org. | [optional] 
**infra_host_top99p** | **Integer** | Shows the 99th percentile of all distinct infrastructure hosts over all hours in the current date for the given org. | [optional] 
**ingested_events_bytes_sum** | **Integer** | Shows the sum of all log bytes ingested over all hours in the current date for the given org. | [optional] 
**name** | **String** | The organization name. | [optional] 
**netflow_indexed_events_count_sum** | **Integer** | Shows the sum of all Network flows indexed over all hours in the current date for the given org. | [optional] 
**npm_host_top99p** | **Integer** | Shows the 99th percentile of all distinct Networks hosts over all hours in the current date for the given org. | [optional] 
**profiling_host_top99p** | **Integer** | Shows the 99th percentile of all profiled hosts over all hours in the current date for the given org. | [optional] 
**public_id** | **String** | The organization public id. | [optional] 
**rum_session_count_sum** | **Integer** | Shows the sum of all RUM Sessions over all hours in the current date for the given org. | [optional] 
**synthetics_browser_check_calls_count_sum** | **Integer** | Shows the sum of all Synthetic browser tests over all hours in the current date for the given org. | [optional] 
**synthetics_check_calls_count_sum** | **Integer** | Shows the sum of all Synthetic API tests over all hours in the current date for the given org. | [optional] 
**trace_search_indexed_events_count_sum** | **Integer** | Shows the sum of all analyzed spans indexed over all hours in the current date for the given org. | [optional] 
**twol_ingested_events_bytes_sum** | **Integer** | Shows the sum of all tracing without limits bytes ingested over all hours in the current date for the given org. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageSummaryDateOrg.new(agent_host_top99p: null,
                                 apm_host_top99p: null,
                                 aws_host_top99p: null,
                                 aws_lambda_func_count: null,
                                 aws_lambda_invocations_sum: null,
                                 billable_ingested_bytes_sum: null,
                                 container_avg: null,
                                 container_hwm: null,
                                 custom_ts_avg: null,
                                 fargate_tasks_count_avg: null,
                                 fargate_tasks_count_hwm: null,
                                 gcp_host_top99p: null,
                                 id: null,
                                 indexed_events_count_sum: null,
                                 infra_host_top99p: null,
                                 ingested_events_bytes_sum: null,
                                 name: null,
                                 netflow_indexed_events_count_sum: null,
                                 npm_host_top99p: null,
                                 profiling_host_top99p: null,
                                 public_id: null,
                                 rum_session_count_sum: null,
                                 synthetics_browser_check_calls_count_sum: null,
                                 synthetics_check_calls_count_sum: null,
                                 trace_search_indexed_events_count_sum: null,
                                 twol_ingested_events_bytes_sum: null)
```


