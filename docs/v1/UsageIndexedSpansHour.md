# DatadogAPIClient::V1::UsageIndexedSpansHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour** | **Time** | The hour for the usage. | [optional] |
| **indexed_events_count** | **Integer** | Contains the number of spans indexed. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageIndexedSpansHour.new(
  hour: null,
  indexed_events_count: null
)
```

