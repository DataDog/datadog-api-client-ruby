# DatadogAPIClient::V1::GeomapWidgetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **log_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **q** | **String** | The widget metrics query. | [optional] |
| **rum_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::GeomapWidgetRequest.new(
  log_query: null,
  q: null,
  rum_query: null
)
```

