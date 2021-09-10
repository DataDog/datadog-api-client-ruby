# DatadogAPIClient::V1::SLOHistoryMetricsSeries

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Count of submitted metrics. |  |
| **metadata** | [**SLOHistoryMetricsSeriesMetadata**](SLOHistoryMetricsSeriesMetadata.md) |  | [optional] |
| **sum** | **Float** | Total sum of the query. |  |
| **values** | **Array&lt;Float&gt;** | The query values for each metric. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOHistoryMetricsSeries.new(
  count: 0,
  metadata: null,
  sum: 0.0,
  values: []
)
```

