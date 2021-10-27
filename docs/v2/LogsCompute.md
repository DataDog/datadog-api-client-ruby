# DatadogAPIClient::V2::LogsCompute

## Properties

| Name            | Type                                                      | Description                                                                                            | Notes                                  |
| --------------- | --------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ | -------------------------------------- |
| **aggregation** | [**LogsAggregationFunction**](LogsAggregationFunction.md) |                                                                                                        |                                        |
| **interval**    | **String**                                                | The time buckets&#39; size (only used for type&#x3D;timeseries) Defaults to a resolution of 150 points | [optional]                             |
| **metric**      | **String**                                                | The metric to use                                                                                      | [optional]                             |
| **type**        | [**LogsComputeType**](LogsComputeType.md)                 |                                                                                                        | [optional][default to &#39;total&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsCompute.new(
  aggregation: null,
  interval: 5m,
  metric: @duration,
  type: null
)
```
