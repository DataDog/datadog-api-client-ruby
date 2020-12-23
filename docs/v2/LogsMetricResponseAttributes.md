# DatadogAPIClient::V2::LogsMetricResponseAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compute** | [**LogsMetricResponseCompute**](LogsMetricResponseCompute.md) |  | [optional] |
| **filter** | [**LogsMetricResponseFilter**](LogsMetricResponseFilter.md) |  | [optional] |
| **group_by** | [**Array&lt;LogsMetricResponseGroupBy&gt;**](LogsMetricResponseGroupBy.md) | The rules for the group by. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricResponseAttributes.new(
  compute: null,
  filter: null,
  group_by: null
)
```

