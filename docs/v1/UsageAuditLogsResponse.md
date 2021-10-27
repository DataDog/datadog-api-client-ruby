# DatadogAPIClient::V1::UsageAuditLogsResponse

## Properties

| Name      | Type                                                         | Description                      | Notes      |
| --------- | ------------------------------------------------------------ | -------------------------------- | ---------- |
| **usage** | [**Array&lt;UsageAuditLogsHour&gt;**](UsageAuditLogsHour.md) | Get hourly usage for audit logs. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAuditLogsResponse.new(
  usage: null
)
```
