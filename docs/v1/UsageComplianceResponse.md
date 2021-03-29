# DatadogAPIClient::V1::UsageComplianceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageComplianceHour&gt;**](UsageComplianceHour.md) | Get hourly usage for Compliance Monitoring. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageComplianceResponse.new(
  usage: null
)
```

