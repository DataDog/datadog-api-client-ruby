# DatadogAPIClient::V2::DashboardListUpdateItemsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboards** | [**Array&lt;DashboardListItemResponse&gt;**](DashboardListItemResponse.md) | List of dashboards in the dashboard list. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::DashboardListUpdateItemsResponse.new(
  dashboards: null
)
```

