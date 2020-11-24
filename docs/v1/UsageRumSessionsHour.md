# DatadogAPIClient::V1::UsageRumSessionsHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour** | **Time** | The hour for the usage. | [optional] |
| **session_count** | **Integer** | Contains the number of RUM Sessions. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageRumSessionsHour.new(
  hour: null,
  session_count: null
)
```

