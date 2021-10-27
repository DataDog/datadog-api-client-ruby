# DatadogAPIClient::V1::CanceledDowntimesIds

## Properties

| Name              | Type                     | Description                         | Notes      |
| ----------------- | ------------------------ | ----------------------------------- | ---------- |
| **cancelled_ids** | **Array&lt;Integer&gt;** | ID of downtimes that were canceled. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::CanceledDowntimesIds.new(
  cancelled_ids: [123456789,123456790]
)
```
