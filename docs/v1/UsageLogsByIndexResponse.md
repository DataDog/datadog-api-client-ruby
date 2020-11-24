# DatadogAPIClient::V1::UsageLogsByIndexResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageLogsByIndexHour&gt;**](UsageLogsByIndexHour.md) | An array of objects regarding hourly usage of logs by index response. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageLogsByIndexResponse.new(
  usage: null
)
```

