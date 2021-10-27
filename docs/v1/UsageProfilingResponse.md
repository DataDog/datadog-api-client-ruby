# DatadogAPIClient::V1::UsageProfilingResponse

## Properties

| Name      | Type                                                         | Description                          | Notes      |
| --------- | ------------------------------------------------------------ | ------------------------------------ | ---------- |
| **usage** | [**Array&lt;UsageProfilingHour&gt;**](UsageProfilingHour.md) | Get hourly usage for profiled hosts. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageProfilingResponse.new(
  usage: null
)
```
