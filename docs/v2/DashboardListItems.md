# DatadogAPIClient::V2::DashboardListItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboards** | [**Array&lt;DashboardListItem&gt;**](DashboardListItem.md) | List of dashboards in the dashboard list. |  |
| **total** | **Integer** | Number of dashboards in the dashboard list. | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::DashboardListItems.new(
  dashboards: [],
  total: null
)
```

