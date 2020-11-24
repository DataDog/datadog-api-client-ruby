# DatadogAPIClient::V1::MonitorThresholdWindowOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recovery_window** | **String** | Describes how long an anomalous metric must be normal before the alert recovers. | [optional] |
| **trigger_window** | **String** | Describes how long a metric must be anomalous before an alert triggers. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorThresholdWindowOptions.new(
  recovery_window: null,
  trigger_window: null
)
```

