# DatadogAPIClient::V1::UsageSDSHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour** | **Time** | The hour for the usage. | [optional] |
| **logs_scanned_bytes** | **Integer** | The total number of bytes scanned of logs usage by the Sensitive Data Scanner from the start of the given hour’s month until the given hour. | [optional] |
| **total_scanned_bytes** | **Integer** | The total number of bytes scanned across all usage types by the Sensitive Data Scanner from the start of the given hour’s month until the given hour. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSDSHour.new(
  hour: null,
  logs_scanned_bytes: null,
  total_scanned_bytes: null
)
```

