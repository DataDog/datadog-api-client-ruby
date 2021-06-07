# DatadogAPIClient::V1::UsageTopAvgMetricsMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day** | **Time** | The day value from the user request that contains the returned usage data. (If day was used the request) | [optional] |
| **month** | **Time** | The month value from the user request that contains the returned usage data. (If month was used the request) | [optional] |
| **pagination** | [**UsageAttributionPagination**](UsageAttributionPagination.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageTopAvgMetricsMetadata.new(
  day: null,
  month: null,
  pagination: null
)
```

