# DatadogAPIClient::V2::DashboardListDeleteItemsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deleted_dashboards_from_list** | [**Array&lt;DashboardListItemResponse&gt;**](DashboardListItemResponse.md) | List of dashboards deleted from the dashboard list. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::DashboardListDeleteItemsResponse.new(
  deleted_dashboards_from_list: null
)
```

