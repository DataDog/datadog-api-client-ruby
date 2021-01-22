# DatadogAPIClient::V1::SLOHistorySLIData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **history** | **Array&lt;Array&lt;Float&gt;&gt;** | For &#x60;monitor&#x60; based SLOs, this includes the aggregated history uptime time series. | [optional] |
| **name** | **String** | For groups in a grouped SLO this is the group name. For monitors in a multi-monitor SLO this is the monitor name. | [optional] |
| **precision** | **Hash&lt;String, Float&gt;** | A mapping of threshold &#x60;timeframe&#x60; to number of accurate decimals, regardless of the from &amp;&amp; to timestamp. | [optional] |
| **preview** | **Boolean** | For &#x60;monitor&#x60; based SLOs when &#x60;true&#x60; this indicates that a replay is in progress to give an accurate uptime calculation. | [optional] |
| **sli_value** | **Float** | The current SLI value of the SLO over the history window. | [optional] |
| **span_precision** | **Float** | The amount of decimal places the SLI value is accurate to for the given from &#x60;&amp;&amp;&#x60; to timestamp. | [optional] |
| **uptime** | **Float** | Deprecated. Use &#x60;sli_value&#x60; instead. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOHistorySLIData.new(
  history: null,
  name: null,
  precision: null,
  preview: null,
  sli_value: 99.99,
  span_precision: null,
  uptime: null
)
```

