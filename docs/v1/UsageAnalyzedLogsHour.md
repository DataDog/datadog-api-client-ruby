# DatadogAPIClient::V1::UsageAnalyzedLogsHour

## Properties

| Name              | Type        | Description                           | Notes      |
| ----------------- | ----------- | ------------------------------------- | ---------- |
| **analyzed_logs** | **Integer** | Contains the number of analyzed logs. | [optional] |
| **hour**          | **Time**    | The hour for the usage.               | [optional] |
| **org_name**      | **String**  | The organization name.                | [optional] |
| **public_id**     | **String**  | The organization public ID.           | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAnalyzedLogsHour.new(
  analyzed_logs: null,
  hour: null,
  org_name: null,
  public_id: null
)
```
