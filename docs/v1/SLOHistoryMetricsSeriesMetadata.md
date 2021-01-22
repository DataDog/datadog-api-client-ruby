# DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggr** | **String** | Query aggregator function. | [optional] |
| **expression** | **String** | Query expression. | [optional] |
| **metric** | **String** | Query metric used. | [optional] |
| **query_index** | **Integer** | Query index from original combined query. | [optional] |
| **scope** | **String** | Query scope. | [optional] |
| **unit** | **String** | Query units (if available). | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadata.new(
  aggr: null,
  expression: null,
  metric: null,
  query_index: null,
  scope: null,
  unit: null
)
```

