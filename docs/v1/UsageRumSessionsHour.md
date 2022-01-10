# DatadogAPIClient::V1::UsageRumSessionsHour

## Properties

| Name                      | Type        | Description                                                                                        | Notes      |
| ------------------------- | ----------- | -------------------------------------------------------------------------------------------------- | ---------- |
| **hour**                  | **Time**    | The hour for the usage.                                                                            | [optional] |
| **org_name**              | **String**  | The organization name.                                                                             | [optional] |
| **public_id**             | **String**  | The organization public ID.                                                                        | [optional] |
| **replay_session_count**  | **Integer** | Contains the number of RUM Replay Sessions (data available beginning November 1, 2021).            | [optional] |
| **session_count**         | **Integer** | Contains the number of browser RUM Lite Sessions.                                                  | [optional] |
| **session_count_android** | **Integer** | Contains the number of mobile RUM Sessions on Android (data available beginning December 1, 2020). | [optional] |
| **session_count_ios**     | **Integer** | Contains the number of mobile RUM Sessions on iOS (data available beginning December 1, 2020).     | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageRumSessionsHour.new(
  hour: null,
  org_name: null,
  public_id: null,
  replay_session_count: null,
  session_count: null,
  session_count_android: null,
  session_count_ios: null
)
```
