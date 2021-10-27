# DatadogAPIClient::V1::UsageIoTResponse

## Properties

| Name      | Type                                             | Description               | Notes      |
| --------- | ------------------------------------------------ | ------------------------- | ---------- |
| **usage** | [**Array&lt;UsageIoTHour&gt;**](UsageIoTHour.md) | Get hourly usage for IoT. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageIoTResponse.new(
  usage: null
)
```
