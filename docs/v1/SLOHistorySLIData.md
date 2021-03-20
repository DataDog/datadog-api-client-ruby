# DatadogAPIClient::V1::SLOHistorySLIData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_budget_remaining** | **Hash&lt;String, Float&gt;** | A mapping of threshold &#x60;timeframe&#x60; to the remaining error budget. | [optional] |
| **errors** | [**Array&lt;SLOHistoryResponseError&gt;**](SLOHistoryResponseError.md) | A list of errors while querying the history data for the service level objective. | [optional] |
| **group** | **String** | For groups in a grouped SLO, this is the group name. | [optional] |
| **history** | **Array&lt;Array&lt;Float&gt;&gt;** | For &#x60;monitor&#x60; based SLOs, this includes the aggregated history uptime time series. | [optional] |
| **monitor_modified** | **Integer** | For &#x60;monitor&#x60; based SLOs, this is the last modified timestamp in epoch seconds of the monitor. | [optional] |
| **monitor_type** | **String** | For &#x60;monitor&#x60; based SLOs, this describes the type of monitor. | [optional] |
| **name** | **String** | For groups in a grouped SLO, this is the group name. For monitors in a multi-monitor SLO, this is the monitor name. | [optional] |
| **precision** | **Hash&lt;String, Float&gt;** | A mapping of threshold &#x60;timeframe&#x60; to number of accurate decimals, regardless of the from &amp;&amp; to timestamp. | [optional] |
| **preview** | **Boolean** | For &#x60;monitor&#x60; based SLOs, when &#x60;true&#x60; this indicates that a replay is in progress to give an accurate uptime calculation. | [optional] |
| **sli_value** | **Float** | The current SLI value of the SLO over the history window. | [optional] |
| **span_precision** | **Float** | The amount of decimal places the SLI value is accurate to for the given from &#x60;&amp;&amp;&#x60; to timestamp. | [optional] |
| **uptime** | **Float** | Use &#x60;sli_value&#x60; instead. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOHistorySLIData.new(
  error_budget_remaining: {&quot;7d&quot;:100.0},
  errors: [],
  group: name,
  history: null,
  monitor_modified: 1615867200,
  monitor_type: string,
  name: string,
  precision: {&quot;30d&quot;:1,&quot;7d&quot;:2},
  preview: true,
  sli_value: 99.99,
  span_precision: 2,
  uptime: 99.99
)
```

