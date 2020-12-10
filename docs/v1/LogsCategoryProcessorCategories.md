# DatadogAPIClient::V1::LogsCategoryProcessorCategories

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | [**LogsFilter**](LogsFilter.md) |  | [optional] |
| **name** | **String** | Value to assign to the target attribute. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsCategoryProcessorCategories.new(
  filter: null,
  name: null
)
```

