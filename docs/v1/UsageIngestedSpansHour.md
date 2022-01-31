# DatadogAPIClient::V1::UsageIngestedSpansHour

## Properties

| Name                      | Type        | Description                                                      | Notes      |
| ------------------------- | ----------- | ---------------------------------------------------------------- | ---------- |
| **hour**                  | **Time**    | The hour for the usage.                                          | [optional] |
| **ingested_events_bytes** | **Integer** | Contains the total number of bytes ingested during a given hour. | [optional] |
| **org_name**              | **String**  | The organization name.                                           | [optional] |
| **public_id**             | **String**  | The organization public ID.                                      | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageIngestedSpansHour.new(
  hour: null,
  ingested_events_bytes: null,
  org_name: null,
  public_id: null
)
```
