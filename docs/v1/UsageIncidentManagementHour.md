# DatadogAPIClient::V1::UsageIncidentManagementHour

## Properties

| Name                     | Type        | Description                                                                                                       | Notes      |
| ------------------------ | ----------- | ----------------------------------------------------------------------------------------------------------------- | ---------- |
| **hour**                 | **Time**    | The hour for the usage.                                                                                           | [optional] |
| **monthly_active_users** | **Integer** | Contains the total number monthly active users from the start of the given hour&#39;s month until the given hour. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageIncidentManagementHour.new(
  hour: null,
  monthly_active_users: null
)
```
