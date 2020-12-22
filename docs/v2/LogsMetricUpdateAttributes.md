# DatadogAPIClient::V2::LogsMetricUpdateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | [**LogsMetricFilter**](LogsMetricFilter.md) |  | [optional] |
| **group_by** | [**Array&lt;LogsMetricGroupBy&gt;**](LogsMetricGroupBy.md) | The rules for the group by. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricUpdateAttributes.new(
  filter: null,
  group_by: null
)
```

