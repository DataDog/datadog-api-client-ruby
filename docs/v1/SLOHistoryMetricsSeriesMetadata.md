# DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggr** | **String** | Query aggregator function. | [optional] |
| **expression** | **String** | Query expression. | [optional] |
| **metric** | **String** | Query metric used. | [optional] |
| **query_index** | **Integer** | Query index from original combined query. | [optional] |
| **scope** | **String** | Query scope. | [optional] |
| **unit** | **Array&lt;Object&gt;** | An array of metric units that contains up to two unit objects. For example, bytes represents one unit object and bytes per second represents two unit objects. If a metric query only has one unit object, the second array element is null. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadata.new(
  aggr: null,
  expression: null,
  metric: null,
  query_index: null,
  scope: null,
  unit: [{&quot;family&quot;:&quot;bytes&quot;,&quot;scale_factor&quot;:1.0,&quot;name&quot;:&quot;byte&quot;,&quot;short_name&quot;:&quot;B&quot;,&quot;plural&quot;:&quot;bytes&quot;,&quot;id&quot;:2},null]
)
```

