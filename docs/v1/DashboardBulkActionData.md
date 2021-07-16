# DatadogAPIClient::V1::DashboardBulkActionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Dashboard resource ID. |  |
| **type** | [**DashboardResourceType**](DashboardResourceType.md) |  | [default to &#39;dashboard&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DashboardBulkActionData.new(
  id: 123-abc-456,
  type: null
)
```

