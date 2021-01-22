# DatadogAPIClient::V1::UsageProfilingHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avg_container_agent_count** | **Integer** | Get average number of container agents for that hour. | [optional] |
| **host_count** | **Integer** | Contains the total number of profiled hosts reporting during a given hour. | [optional] |
| **hour** | **Time** | The hour for the usage. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageProfilingHour.new(
  avg_container_agent_count: null,
  host_count: null,
  hour: null
)
```

