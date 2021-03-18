# DatadogAPIClient::V1::SLOHistoryMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **denominator** | [**SLOHistoryMetricsSeries**](SLOHistoryMetricsSeries.md) |  |  |
| **interval** | **Integer** | The aggregated query interval for the series data. It&#39;s implicit based on the query time window. |  |
| **message** | **String** | Optional message if there are specific query issues/warnings. | [optional] |
| **numerator** | [**SLOHistoryMetricsSeries**](SLOHistoryMetricsSeries.md) |  |  |
| **query** | **String** | The combined numerator and denominator query CSV. |  |
| **res_type** | **String** | The series result type. This mimics &#x60;batch_query&#x60; response type. |  |
| **resp_version** | **Integer** | The series response version type. This mimics &#x60;batch_query&#x60; response type. |  |
| **times** | **Array&lt;Float&gt;** | An array of query timestamps in EPOCH milliseconds |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOHistoryMetrics.new(
  denominator: null,
  interval: 0,
  message: ,
  numerator: null,
  query: ,
  res_type: ,
  resp_version: 0,
  times: []
)
```

