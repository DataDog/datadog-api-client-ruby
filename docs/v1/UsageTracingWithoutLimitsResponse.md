# DatadogAPIClient::V1::UsageTracingWithoutLimitsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageTracingWithoutLimitsHour&gt;**](UsageTracingWithoutLimitsHour.md) | Get hourly usage for tracing without limits. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageTracingWithoutLimitsResponse.new(
  usage: null
)
```

