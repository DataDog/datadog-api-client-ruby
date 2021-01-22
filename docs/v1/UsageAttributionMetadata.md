# DatadogAPIClient::V1::UsageAttributionMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregates** | [**Array&lt;UsageAttributionAggregatesBody&gt;**](UsageAttributionAggregatesBody.md) | An array of available aggregates. | [optional] |
| **pagination** | [**UsageAttributionPagination**](UsageAttributionPagination.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAttributionMetadata.new(
  aggregates: null,
  pagination: null
)
```

