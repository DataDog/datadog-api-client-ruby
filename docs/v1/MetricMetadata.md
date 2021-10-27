# DatadogAPIClient::V1::MetricMetadata

## Properties

| Name                | Type        | Description                                                                        | Notes                |
| ------------------- | ----------- | ---------------------------------------------------------------------------------- | -------------------- |
| **description**     | **String**  | Metric description.                                                                | [optional]           |
| **integration**     | **String**  | Name of the integration that sent the metric if applicable.                        | [optional][readonly] |
| **per_unit**        | **String**  | Per unit of the metric such as &#x60;second&#x60; in &#x60;bytes per second&#x60;. | [optional]           |
| **short_name**      | **String**  | A more human-readable and abbreviated version of the metric name.                  | [optional]           |
| **statsd_interval** | **Integer** | StatsD flush interval of the metric in seconds if applicable.                      | [optional]           |
| **type**            | **String**  | Metric type such as &#x60;gauge&#x60; or &#x60;rate&#x60;.                         | [optional]           |
| **unit**            | **String**  | Primary unit of the metric such as &#x60;byte&#x60; or &#x60;operation&#x60;.      | [optional]           |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MetricMetadata.new(
  description: null,
  integration: null,
  per_unit: second,
  short_name: null,
  statsd_interval: null,
  type: count,
  unit: byte
)
```
