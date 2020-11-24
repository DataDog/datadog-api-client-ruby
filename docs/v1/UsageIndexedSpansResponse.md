# DatadogAPIClient::V1::UsageIndexedSpansResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageIndexedSpansHour&gt;**](UsageIndexedSpansHour.md) | Array with the number of hourly traces indexed for a given organization. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageIndexedSpansResponse.new(
  usage: null
)
```

