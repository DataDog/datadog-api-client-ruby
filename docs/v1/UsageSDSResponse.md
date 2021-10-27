# DatadogAPIClient::V1::UsageSDSResponse

## Properties

| Name      | Type                                             | Description                                  | Notes      |
| --------- | ------------------------------------------------ | -------------------------------------------- | ---------- |
| **usage** | [**Array&lt;UsageSDSHour&gt;**](UsageSDSHour.md) | Get hourly usage for Sensitive Data Scanner. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSDSResponse.new(
  usage: null
)
```
