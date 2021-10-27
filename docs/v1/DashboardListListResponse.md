# DatadogAPIClient::V1::DashboardListListResponse

## Properties

| Name                | Type                                               | Description                       | Notes      |
| ------------------- | -------------------------------------------------- | --------------------------------- | ---------- |
| **dashboard_lists** | [**Array&lt;DashboardList&gt;**](DashboardList.md) | List of all your dashboard lists. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DashboardListListResponse.new(
  dashboard_lists: null
)
```
