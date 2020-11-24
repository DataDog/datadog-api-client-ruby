# DatadogAPIClient::V1::UsageLogsHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billable_ingested_bytes** | **Integer** | Contains the number of billable log bytes ingested. | [optional] |
| **hour** | **Time** | The hour for the usage. | [optional] |
| **indexed_events_count** | **Integer** | Contains the number of log events indexed. | [optional] |
| **ingested_events_bytes** | **Integer** | Contains the number of log bytes ingested. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageLogsHour.new(
  billable_ingested_bytes: null,
  hour: null,
  indexed_events_count: null,
  ingested_events_bytes: null
)
```

