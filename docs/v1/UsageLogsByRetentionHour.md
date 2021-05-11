# DatadogAPIClient::V1::UsageLogsByRetentionHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **indexed_events_count** | **Integer** | Total logs indexed with this retention period during a given hour. | [optional] |
| **live_indexed_events_count** | **Integer** | Live logs indexed with this retention period during a given hour. | [optional] |
| **rehydrated_indexed_events_count** | **Integer** | Rehydrated logs indexed with this retention period during a given hour. | [optional] |
| **retention** | **String** | The retention period in days or \&quot;custom\&quot; for all custom retention usage. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageLogsByRetentionHour.new(
  indexed_events_count: null,
  live_indexed_events_count: null,
  rehydrated_indexed_events_count: null,
  retention: null
)
```

