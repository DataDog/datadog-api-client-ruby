# DatadogAPIClient::V1::UsageSNMPHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour** | **Time** | The hour for the usage. | [optional] |
| **snmp_devices** | **Integer** | Contains the number of SNMP devices. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSNMPHour.new(
  hour: null,
  snmp_devices: null
)
```

