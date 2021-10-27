# DatadogAPIClient::V1::UsageRumSessionsHour

## Properties

| Name                      | Type        | Description                                                                                        | Notes      |
| ------------------------- | ----------- | -------------------------------------------------------------------------------------------------- | ---------- |
| **hour**                  | **Time**    | The hour for the usage.                                                                            | [optional] |
| **session_count**         | **Integer** | Contains the number of RUM Sessions.                                                               | [optional] |
| **session_count_android** | **Integer** | Contains the number of mobile RUM Sessions on Android (data available beginning December 1, 2020). | [optional] |
| **session_count_ios**     | **Integer** | Contains the number of mobile RUM Sessions on iOS (data available beginning December 1, 2020).     | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageRumSessionsHour.new(
  hour: null,
  session_count: null,
  session_count_android: null,
  session_count_ios: null
)
```
