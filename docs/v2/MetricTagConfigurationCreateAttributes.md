# DatadogAPIClient::V2::MetricTagConfigurationCreateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregations** | [**Array&lt;MetricCustomAggregation&gt;**](MetricCustomAggregation.md) | A list of queryable aggregation combinations for a count, rate, or gauge metric. By default, count and rate metrics require the (time: sum, space: sum) aggregation and Gauge metrics require the (time: avg, space: avg) aggregation. Additional time &amp; space combinations are also available:  - time: avg, space: avg - time: avg, space: max - time: avg, space: min - time: avg, space: sum - time: count, space: sum - time: max, space: max - time: min, space: min - time: sum, space: avg - time: sum, space: sum  Can only be applied to metrics that have a &#x60;metric_type&#x60; of &#x60;count&#x60;, &#x60;rate&#x60;, or &#x60;gauge&#x60;. | [optional] |
| **include_percentiles** | **Boolean** | Toggle to include/exclude percentiles for a distribution metric. Defaults to false. Can only be applied to metrics that have a &#x60;metric_type&#x60; of &#x60;distribution&#x60;. | [optional][default to false] |
| **metric_type** | [**MetricTagConfigurationMetricTypes**](MetricTagConfigurationMetricTypes.md) |  | [default to &#39;gauge&#39;] |
| **tags** | **Array&lt;String&gt;** | A list of tag keys that will be queryable for your metric. |  |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricTagConfigurationCreateAttributes.new(
  aggregations: [{&quot;space&quot;:&quot;sum&quot;,&quot;time&quot;:&quot;sum&quot;},{&quot;space&quot;:&quot;sum&quot;,&quot;time&quot;:&quot;count&quot;}],
  include_percentiles: true,
  metric_type: null,
  tags: [&quot;app&quot;,&quot;datacenter&quot;]
)
```

