# DatadogAPIClient::V1::QueryValueWidgetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregator** | [**WidgetAggregator**](WidgetAggregator.md) |  | [optional] |
| **apm_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **conditional_formats** | [**Array&lt;WidgetConditionalFormat&gt;**](WidgetConditionalFormat.md) | List of conditional formats. | [optional] |
| **event_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **log_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **network_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **process_query** | [**ProcessQueryDefinition**](ProcessQueryDefinition.md) |  | [optional] |
| **q** | **String** | TODO. | [optional] |
| **rum_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **security_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::QueryValueWidgetRequest.new(
  aggregator: null,
  apm_query: null,
  conditional_formats: null,
  event_query: null,
  log_query: null,
  network_query: null,
  process_query: null,
  q: null,
  rum_query: null,
  security_query: null
)
```

