# DatadogAPIClient::V1::ServiceLevelObjectiveQuery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **denominator** | **String** | A Datadog metric query for total (valid) events. |  |
| **numerator** | **String** | A Datadog metric query for good events. |  |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ServiceLevelObjectiveQuery.new(
  denominator: null,
  numerator: null
)
```

