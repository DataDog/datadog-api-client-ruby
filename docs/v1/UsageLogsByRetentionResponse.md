# DatadogAPIClient::V1::UsageLogsByRetentionResponse

## Properties

| Name      | Type                                                                     | Description                                            | Notes      |
| --------- | ------------------------------------------------------------------------ | ------------------------------------------------------ | ---------- |
| **usage** | [**Array&lt;UsageLogsByRetentionHour&gt;**](UsageLogsByRetentionHour.md) | Get hourly usage for indexed logs by retention period. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageLogsByRetentionResponse.new(
  usage: null
)
```
