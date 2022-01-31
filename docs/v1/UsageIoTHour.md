# DatadogAPIClient::V1::UsageIoTHour

## Properties

| Name                 | Type        | Description                                          | Notes      |
| -------------------- | ----------- | ---------------------------------------------------- | ---------- |
| **hour**             | **Time**    | The hour for the usage.                              | [optional] |
| **iot_device_count** | **Integer** | The total number of IoT devices during a given hour. | [optional] |
| **org_name**         | **String**  | The organization name.                               | [optional] |
| **public_id**        | **String**  | The organization public ID.                          | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageIoTHour.new(
  hour: null,
  iot_device_count: null,
  org_name: null,
  public_id: null
)
```
