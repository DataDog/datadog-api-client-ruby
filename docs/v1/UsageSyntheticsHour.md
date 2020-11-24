# DatadogAPIClient::V1::UsageSyntheticsHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_calls_count** | **Integer** | Contains the number of Synthetics API tests run. | [optional] |
| **hour** | **Time** | The hour for the usage. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSyntheticsHour.new(
  check_calls_count: null,
  hour: null
)
```

