# DatadogAPIClient::V1::SLOHistoryResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_ts** | **Integer** | The &#x60;from&#x60; timestamp in epoch seconds. | [optional] |
| **group_by** | **Array&lt;String&gt;** | For &#x60;metric&#x60; based SLOs where the query includes a group-by clause, this represents the list of grouping parameters.  This is not included in responses for &#x60;monitor&#x60; based SLOs. | [optional] |
| **groups** | [**Array&lt;SLOHistorySLIData&gt;**](SLOHistorySLIData.md) | For grouped SLOs, this represents SLI data for specific groups.  This is not included in the responses for &#x60;metric&#x60; based SLOs. | [optional] |
| **monitors** | [**Array&lt;SLOHistorySLIData&gt;**](SLOHistorySLIData.md) | For multi-monitor SLOs, this represents SLI data for specific monitors.  This is not included in the responses for &#x60;metric&#x60; based SLOs. | [optional] |
| **overall** | [**SLOHistorySLIData**](SLOHistorySLIData.md) |  | [optional] |
| **series** | [**SLOHistoryMetrics**](SLOHistoryMetrics.md) |  | [optional] |
| **thresholds** | [**Hash&lt;String, SLOThreshold&gt;**](SLOThreshold.md) | mapping of string timeframe to the SLO threshold. | [optional] |
| **to_ts** | **Integer** | The &#x60;to&#x60; timestamp in epoch seconds. | [optional] |
| **type** | [**SLOType**](SLOType.md) |  | [optional] |
| **type_id** | [**SLOTypeNumeric**](SLOTypeNumeric.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOHistoryResponseData.new(
  from_ts: null,
  group_by: null,
  groups: null,
  monitors: null,
  overall: null,
  series: null,
  thresholds: null,
  to_ts: null,
  type: null,
  type_id: null
)
```

