# DatadogAPIClient::V1::UsageAuditLogsHour

## Properties

| Name              | Type        | Description                                                       | Notes      |
| ----------------- | ----------- | ----------------------------------------------------------------- | ---------- |
| **hour**          | **Time**    | The hour for the usage.                                           | [optional] |
| **lines_indexed** | **Integer** | The total number of audit logs lines indexed during a given hour. | [optional] |
| **org_name**      | **String**  | The organization name.                                            | [optional] |
| **public_id**     | **String**  | The organization public ID.                                       | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAuditLogsHour.new(
  hour: null,
  lines_indexed: null,
  org_name: null,
  public_id: null
)
```
