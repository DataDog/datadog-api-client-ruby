# DatadogAPIClient::V1::UsageSyntheticsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageSyntheticsHour&gt;**](UsageSyntheticsHour.md) | Array with the number of hourly Synthetics test run for a given organization. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSyntheticsResponse.new(
  usage: null
)
```

