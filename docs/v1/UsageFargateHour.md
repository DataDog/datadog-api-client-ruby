# DatadogAPIClient::V1::UsageFargateHour

## Properties

| Name                           | Type        | Description                                            | Notes      |
| ------------------------------ | ----------- | ------------------------------------------------------ | ---------- |
| **avg_profiled_fargate_tasks** | **Integer** | The average profiled task count for Fargate Profiling. | [optional] |
| **hour**                       | **Time**    | The hour for the usage.                                | [optional] |
| **tasks_count**                | **Integer** | The number of Fargate tasks run.                       | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageFargateHour.new(
  avg_profiled_fargate_tasks: null,
  hour: null,
  tasks_count: null
)
```
