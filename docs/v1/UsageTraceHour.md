# DatadogAPIClient::V1::UsageTraceHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour** | **Time** | The hour for the usage. | [optional] |
| **indexed_events_count** | **Integer** | Contains the number of Indexed Spans indexed. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageTraceHour.new(
  hour: null,
  indexed_events_count: null
)
```

