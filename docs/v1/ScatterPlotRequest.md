# DatadogAPIClient::V1::ScatterPlotRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregator** | [**ScatterplotWidgetAggregator**](ScatterplotWidgetAggregator.md) |  | [optional] |
| **apm_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **event_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **log_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **network_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **process_query** | [**ProcessQueryDefinition**](ProcessQueryDefinition.md) |  | [optional] |
| **profile_metrics_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **q** | **String** | Query definition. | [optional] |
| **rum_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **security_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ScatterPlotRequest.new(
  aggregator: null,
  apm_query: null,
  event_query: null,
  log_query: null,
  network_query: null,
  process_query: null,
  profile_metrics_query: null,
  q: null,
  rum_query: null,
  security_query: null
)
```

