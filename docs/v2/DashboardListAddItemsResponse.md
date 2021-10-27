# DatadogAPIClient::V2::DashboardListAddItemsResponse

## Properties

| Name                         | Type                                                                       | Description                                     | Notes      |
| ---------------------------- | -------------------------------------------------------------------------- | ----------------------------------------------- | ---------- |
| **added_dashboards_to_list** | [**Array&lt;DashboardListItemResponse&gt;**](DashboardListItemResponse.md) | List of dashboards added to the dashboard list. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::DashboardListAddItemsResponse.new(
  added_dashboards_to_list: null
)
```
