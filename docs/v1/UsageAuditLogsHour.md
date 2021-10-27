# DatadogAPIClient::V1::UsageAuditLogsHour

## Properties

| Name              | Type        | Description                                                       | Notes      |
| ----------------- | ----------- | ----------------------------------------------------------------- | ---------- |
| **hour**          | **Time**    | The hour for the usage.                                           | [optional] |
| **lines_indexed** | **Integer** | The total number of audit logs lines indexed during a given hour. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAuditLogsHour.new(
  hour: null,
  lines_indexed: null
)
```
