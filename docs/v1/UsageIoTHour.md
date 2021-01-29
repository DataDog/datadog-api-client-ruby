# DatadogAPIClient::V1::UsageIoTHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour** | **Time** | The hour for the usage. | [optional] |
| **iot_device_count** | **Integer** | The total number of IoT device hours from the start of the given hour&#39;s month until the given hour. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageIoTHour.new(
  hour: null,
  iot_device_count: null
)
```

