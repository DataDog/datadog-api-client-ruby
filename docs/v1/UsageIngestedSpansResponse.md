# DatadogAPIClient::V1::UsageIngestedSpansResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageIngestedSpansHour&gt;**](UsageIngestedSpansHour.md) | Get hourly usage for ingested spans. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageIngestedSpansResponse.new(
  usage: null
)
```

