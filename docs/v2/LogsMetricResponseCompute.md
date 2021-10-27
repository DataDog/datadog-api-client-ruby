# DatadogAPIClient::V2::LogsMetricResponseCompute

## Properties

| Name                 | Type                                                                                        | Description                                                                                                                       | Notes      |
| -------------------- | ------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **aggregation_type** | [**LogsMetricResponseComputeAggregationType**](LogsMetricResponseComputeAggregationType.md) |                                                                                                                                   | [optional] |
| **path**             | **String**                                                                                  | The path to the value the log-based metric will aggregate on (only used if the aggregation type is a \&quot;distribution\&quot;). | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricResponseCompute.new(
  aggregation_type: null,
  path: @duration
)
```
