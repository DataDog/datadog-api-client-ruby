# DatadogAPIClient::V2::DashboardListItemRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the dashboard. |  |
| **type** | [**DashboardType**](DashboardType.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::DashboardListItemRequest.new(
  id: q5j-nti-fv6,
  type: null
)
```

