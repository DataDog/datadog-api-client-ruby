# DatadogAPIClient::V1::UsageIncidentManagementResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageIncidentManagementHour&gt;**](UsageIncidentManagementHour.md) | Get hourly usage for incident management. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageIncidentManagementResponse.new(
  usage: null
)
```

