# DatadogAPIClient::V1::UsageCWSResponse

## Properties

| Name      | Type                                             | Description                                   | Notes      |
| --------- | ------------------------------------------------ | --------------------------------------------- | ---------- |
| **usage** | [**Array&lt;UsageCWSHour&gt;**](UsageCWSHour.md) | Get hourly usage for Cloud Workload Security. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageCWSResponse.new(
  usage: null
)
```
