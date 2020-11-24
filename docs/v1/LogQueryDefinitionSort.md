# DatadogAPIClient::V1::LogQueryDefinitionSort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregation** | **String** | The aggregation method. |  |
| **facet** | **String** | Facet name. | [optional] |
| **order** | [**WidgetSort**](WidgetSort.md) |  |  |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogQueryDefinitionSort.new(
  aggregation: avg,
  facet: @string_query.interval,
  order: null
)
```

