# DatadogAPIClient::V2::DashboardListItemResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the dashboard. | [readonly] |
| **type** | [**DashboardType**](DashboardType.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::DashboardListItemResponse.new(
  id: q5j-nti-fv6,
  type: null
)
```

