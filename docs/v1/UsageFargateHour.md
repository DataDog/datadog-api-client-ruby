# DatadogAPIClient::V1::UsageFargateHour

## Properties

| Name            | Type        | Description                      | Notes      |
| --------------- | ----------- | -------------------------------- | ---------- |
| **hour**        | **Time**    | The hour for the usage.          | [optional] |
| **tasks_count** | **Integer** | The number of Fargate tasks run. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageFargateHour.new(
  hour: null,
  tasks_count: null
)
```
