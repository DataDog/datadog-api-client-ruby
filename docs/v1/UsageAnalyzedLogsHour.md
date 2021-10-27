# DatadogAPIClient::V1::UsageAnalyzedLogsHour

## Properties

| Name              | Type        | Description                           | Notes      |
| ----------------- | ----------- | ------------------------------------- | ---------- |
| **analyzed_logs** | **Integer** | Contains the number of analyzed logs. | [optional] |
| **hour**          | **Time**    | The hour for the usage.               | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAnalyzedLogsHour.new(
  analyzed_logs: null,
  hour: null
)
```
