# DatadogAPIClient::V1::LogsCategoryProcessorCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | [**LogsFilter**](LogsFilter.md) |  | [optional] |
| **name** | **String** | Value to assign to the target attribute. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsCategoryProcessorCategory.new(
  filter: null,
  name: null
)
```

