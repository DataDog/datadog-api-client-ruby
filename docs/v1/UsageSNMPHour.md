# DatadogAPIClient::V1::UsageSNMPHour

## Properties

| Name             | Type        | Description                          | Notes      |
| ---------------- | ----------- | ------------------------------------ | ---------- |
| **hour**         | **Time**    | The hour for the usage.              | [optional] |
| **org_name**     | **String**  | The organization name.               | [optional] |
| **public_id**    | **String**  | The organization public ID.          | [optional] |
| **snmp_devices** | **Integer** | Contains the number of SNMP devices. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSNMPHour.new(
  hour: null,
  org_name: null,
  public_id: null,
  snmp_devices: null
)
```
