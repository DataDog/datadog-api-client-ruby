# DatadogAPIClient::V1::WidgetFormulaLimit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Number of results to return. | [optional] |
| **order** | [**QuerySortOrder**](QuerySortOrder.md) |  | [optional][default to &#39;desc&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetFormulaLimit.new(
  count: null,
  order: null
)
```

