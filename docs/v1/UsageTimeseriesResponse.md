# DatadogAPIClient::V1::UsageTimeseriesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageTimeseriesHour&gt;**](UsageTimeseriesHour.md) | An array of objects regarding hourly usage of timeseries. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageTimeseriesResponse.new(
  usage: null
)
```

