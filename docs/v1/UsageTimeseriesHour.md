# DatadogAPIClient::V1::UsageTimeseriesHour

## Properties

| Name                             | Type        | Description                                                                                            | Notes      |
| -------------------------------- | ----------- | ------------------------------------------------------------------------------------------------------ | ---------- |
| **hour**                         | **Time**    | The hour for the usage.                                                                                | [optional] |
| **num_custom_input_timeseries**  | **Integer** | Contains the number of custom metrics that are inputs for aggregations (metric configured is custom).  | [optional] |
| **num_custom_output_timeseries** | **Integer** | Contains the number of custom metrics that are outputs for aggregations (metric configured is custom). | [optional] |
| **num_custom_timeseries**        | **Integer** | Contains sum of non-aggregation custom metrics and custom metrics that are outputs for aggregations.   | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageTimeseriesHour.new(
  hour: null,
  num_custom_input_timeseries: null,
  num_custom_output_timeseries: null,
  num_custom_timeseries: null
)
```
