# DatadogAPIClient::V2::MetricTagConfigurationCreateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_percentiles** | **Boolean** | Toggle to include/exclude percentiles for a distribution metric. Defaults to false. Can only be applied to metrics that have a &#x60;metric_type&#x60; of &#x60;distribution&#x60;. | [optional][default to false] |
| **metric_type** | [**MetricTagConfigurationMetricTypes**](MetricTagConfigurationMetricTypes.md) |  | [default to &#39;gauge&#39;] |
| **tags** | **Array&lt;String&gt;** | A list of tag keys that will be queryable for your metric. |  |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricTagConfigurationCreateAttributes.new(
  include_percentiles: true,
  metric_type: null,
  tags: [&quot;app&quot;,&quot;datacenter&quot;]
)
```

