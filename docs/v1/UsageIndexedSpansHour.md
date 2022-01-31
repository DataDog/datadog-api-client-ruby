# DatadogAPIClient::V1::UsageIndexedSpansHour

## Properties

| Name                     | Type        | Description                           | Notes      |
| ------------------------ | ----------- | ------------------------------------- | ---------- |
| **hour**                 | **Time**    | The hour for the usage.               | [optional] |
| **indexed_events_count** | **Integer** | Contains the number of spans indexed. | [optional] |
| **org_name**             | **String**  | The organization name.                | [optional] |
| **public_id**            | **String**  | The organization public ID.           | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageIndexedSpansHour.new(
  hour: null,
  indexed_events_count: null,
  org_name: null,
  public_id: null
)
```
