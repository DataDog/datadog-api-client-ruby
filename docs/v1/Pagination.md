# DatadogAPIClient::V1::Pagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | Total count. | [optional] |
| **total_filtered_count** | **Integer** | Total count of elements matched by the filter. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::Pagination.new(
  total_count: null,
  total_filtered_count: null
)
```

