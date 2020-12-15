# DatadogAPIClient::V1::UsageLambdaResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageLambdaHour&gt;**](UsageLambdaHour.md) | Get hourly usage for Lambda. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageLambdaResponse.new(
  usage: null
)
```

