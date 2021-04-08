# DatadogAPIClient::V1::ServiceLevelObjectiveQuery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **denominator** | **String** | A Datadog metric query for total (valid) events. |  |
| **numerator** | **String** | A Datadog metric query for good events. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ServiceLevelObjectiveQuery.new(
  denominator: sum:my.custom.metric{*}.as_count(),
  numerator: sum:my.custom.metric{type:good}.as_count()
)
```

