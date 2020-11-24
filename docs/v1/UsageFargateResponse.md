# DatadogAPIClient::V1::UsageFargateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageFargateHour&gt;**](UsageFargateHour.md) | Array with the number of hourly Fargate tasks recorded for a given organization. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageFargateResponse.new(
  usage: null
)
```

