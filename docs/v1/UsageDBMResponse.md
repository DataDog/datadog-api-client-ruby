# DatadogAPIClient::V1::UsageDBMResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageDBMHour&gt;**](UsageDBMHour.md) | Get hourly usage for Database Monitoring | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageDBMResponse.new(
  usage: null
)
```

