# DatadogAPIClient::V1::UsageBillableSummaryKeys

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apm_host_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **apm_host_top99p** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **apm_trace_search_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **fargate_container_average** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **infra_container_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **infra_host_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **infra_host_top99p** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **iot_top99p** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **lambda_function_average** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **logs_indexed_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **logs_ingested_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **npm_flow_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **npm_host_top99p** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **rum_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **serverless_invocation_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **siem_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **synthetics_api_tests_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **synthetics_browser_checks_sum** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |
| **timeseries_average** | [**UsageBillableSummaryBody**](UsageBillableSummaryBody.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageBillableSummaryKeys.new(
  apm_host_sum: null,
  apm_host_top99p: null,
  apm_trace_search_sum: null,
  fargate_container_average: null,
  infra_container_sum: null,
  infra_host_sum: null,
  infra_host_top99p: null,
  iot_top99p: null,
  lambda_function_average: null,
  logs_indexed_sum: null,
  logs_ingested_sum: null,
  npm_flow_sum: null,
  npm_host_top99p: null,
  rum_sum: null,
  serverless_invocation_sum: null,
  siem_sum: null,
  synthetics_api_tests_sum: null,
  synthetics_browser_checks_sum: null,
  timeseries_average: null
)
```

