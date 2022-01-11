# DatadogAPIClient::V1::MonthlyUsageAttributionMetadata

## Properties

| Name           | Type                                                                                 | Description                       | Notes      |
| -------------- | ------------------------------------------------------------------------------------ | --------------------------------- | ---------- |
| **aggregates** | [**Array&lt;UsageAttributionAggregatesBody&gt;**](UsageAttributionAggregatesBody.md) | An array of available aggregates. | [optional] |
| **pagination** | [**MonthlyUsageAttributionPagination**](MonthlyUsageAttributionPagination.md)        |                                   | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonthlyUsageAttributionMetadata.new(
  aggregates: null,
  pagination: null
)
```
