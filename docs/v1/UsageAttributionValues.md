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
| **custom_timeseries_percentage** | **Float** | The percentage of custom metrics usage by tag(s). | [optional] |
| **custom_timeseries_usage** | **Float** | The custom metrics usage by tag(s). | [optional] |
| **infra_host_percentage** | **Float** | The percentage of infrastructure host usage by tag(s). | [optional] |
| **infra_host_usage** | **Float** | The infrastructure host usage by tag(s). | [optional] |
| **lambda_percentage** | **Float** | The percentage of lambda function usage by tag(s). | [optional] |
| **lambda_usage** | **Float** | The lambda function usage by tag(s). | [optional] |
| **npm_host_percentage** | **Float** | The percentage of network host usage by tag(s). | [optional] |
| **npm_host_usage** | **Float** | The network host usage by tag(s). | [optional] |
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
  custom_timeseries_percentage: null,
  custom_timeseries_usage: null,
  infra_host_percentage: null,
  infra_host_usage: null,
  lambda_percentage: null,
  lambda_usage: null,
  npm_host_percentage: null,
  npm_host_usage: null,
  snmp_percentage: null,
  snmp_usage: null
)
```

