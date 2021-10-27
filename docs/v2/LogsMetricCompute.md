# DatadogAPIClient::V2::LogsMetricCompute

## Properties

| Name                 | Type                                                                        | Description                                                                                                                       | Notes      |
| -------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **aggregation_type** | [**LogsMetricComputeAggregationType**](LogsMetricComputeAggregationType.md) |                                                                                                                                   |            |
| **path**             | **String**                                                                  | The path to the value the log-based metric will aggregate on (only used if the aggregation type is a \&quot;distribution\&quot;). | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricCompute.new(
  aggregation_type: null,
  path: @duration
)
```
