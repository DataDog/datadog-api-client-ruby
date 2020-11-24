# DatadogAPIClient::V1::SLOHistoryResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_ts** | **Integer** | The &#x60;from&#x60; timestamp in epoch seconds. | [optional] |
| **groups** | [**SLOHistorySLIData**](SLOHistorySLIData.md) |  | [optional] |
| **overall** | [**SLOHistorySLIData**](SLOHistorySLIData.md) |  | [optional] |
| **series** | [**SLOHistoryMetrics**](SLOHistoryMetrics.md) |  | [optional] |
| **thresholds** | [**Hash&lt;String, SLOThreshold&gt;**](SLOThreshold.md) | mapping of string timeframe to the SLO threshold. | [optional] |
| **to_ts** | **Integer** | The &#x60;to&#x60; timestamp in epoch seconds. | [optional] |
| **type** | [**SLOType**](SLOType.md) |  | [optional] |
| **type_id** | [**SLOTypeNumeric**](SLOTypeNumeric.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOHistoryResponseData.new(
  from_ts: null,
  groups: null,
  overall: null,
  series: null,
  thresholds: null,
  to_ts: null,
  type: null,
  type_id: null
)
```

