# DatadogAPIClient::V2::DashboardListUpdateItemsRequest

## Properties

| Name           | Type                                                                     | Description                                         | Notes      |
| -------------- | ------------------------------------------------------------------------ | --------------------------------------------------- | ---------- |
| **dashboards** | [**Array&lt;DashboardListItemRequest&gt;**](DashboardListItemRequest.md) | List of dashboards to update the dashboard list to. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::DashboardListUpdateItemsRequest.new(
  dashboards: null
)
```
