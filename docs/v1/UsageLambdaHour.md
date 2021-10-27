# DatadogAPIClient::V1::UsageLambdaHour

## Properties

| Name                | Type        | Description                                                                 | Notes      |
| ------------------- | ----------- | --------------------------------------------------------------------------- | ---------- |
| **func_count**      | **Integer** | Contains the number of different functions for each region and AWS account. | [optional] |
| **hour**            | **Time**    | The hour for the usage.                                                     | [optional] |
| **invocations_sum** | **Integer** | Contains the sum of invocations of all functions.                           | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageLambdaHour.new(
  func_count: null,
  hour: null,
  invocations_sum: null
)
```
