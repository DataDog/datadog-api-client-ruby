# DatadogAPIClient::V1::MetricsQueryMetadata

## Properties

| Name             | Type                                                     | Description                                                                                                                                                                                                                                                                         | Notes                |
| ---------------- | -------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------- |
| **aggr**         | **String**                                               | Aggregation type.                                                                                                                                                                                                                                                                   | [optional][readonly] |
| **display_name** | **String**                                               | Display name of the metric.                                                                                                                                                                                                                                                         | [optional][readonly] |
| **\_end**        | **Integer**                                              | End of the time window, milliseconds since Unix epoch.                                                                                                                                                                                                                              | [optional][readonly] |
| **expression**   | **String**                                               | Metric expression.                                                                                                                                                                                                                                                                  | [optional][readonly] |
| **interval**     | **Integer**                                              | Number of seconds between data samples.                                                                                                                                                                                                                                             | [optional][readonly] |
| **length**       | **Integer**                                              | Number of data samples.                                                                                                                                                                                                                                                             | [optional][readonly] |
| **metric**       | **String**                                               | Metric name.                                                                                                                                                                                                                                                                        | [optional][readonly] |
| **pointlist**    | **Array&lt;Array&gt;**                                   | List of points of the time series.                                                                                                                                                                                                                                                  | [optional][readonly] |
| **query_index**  | **Integer**                                              | The index of the series&#39; query within the request.                                                                                                                                                                                                                              | [optional][readonly] |
| **scope**        | **String**                                               | Metric scope, comma separated list of tags.                                                                                                                                                                                                                                         | [optional][readonly] |
| **start**        | **Integer**                                              | Start of the time window, milliseconds since Unix epoch.                                                                                                                                                                                                                            | [optional][readonly] |
| **tag_set**      | **Array&lt;String&gt;**                                  | Unique tags identifying this series.                                                                                                                                                                                                                                                | [optional][readonly] |
| **unit**         | [**Array&lt;MetricsQueryUnit&gt;**](MetricsQueryUnit.md) | Detailed information about the metric unit. First element describes the \&quot;primary unit\&quot; (for example, &#x60;bytes&#x60; in &#x60;bytes per second&#x60;), second describes the \&quot;per unit\&quot; (for example, &#x60;second&#x60; in &#x60;bytes per second&#x60;). | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MetricsQueryMetadata.new(
  aggr: avg,
  display_name: system.cpu.idle,
  _end: null,
  expression: system.cpu.idle{host:foo,env:test},
  interval: null,
  length: null,
  metric: system.cpu.idle,
  pointlist: null,
  query_index: null,
  scope: host:foo,env:test,
  start: null,
  tag_set: null,
  unit: null
)
```
