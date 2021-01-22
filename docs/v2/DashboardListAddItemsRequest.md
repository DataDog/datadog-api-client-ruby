# DatadogAPIClient::V2::DashboardListAddItemsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboards** | [**Array&lt;DashboardListItemRequest&gt;**](DashboardListItemRequest.md) | List of dashboards to add the dashboard list. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::DashboardListAddItemsRequest.new(
  dashboards: null
)
```

