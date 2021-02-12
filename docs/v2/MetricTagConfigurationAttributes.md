# DatadogAPIClient::V2::MetricTagConfigurationAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Timestamp when the tag configuration was created. | [optional] |
| **include_percentiles** | **Boolean** | Toggle to turn on/off percentile aggregations for distribution metrics. Only present when the &#x60;metric_type&#x60; is &#x60;distribution&#x60;. | [optional] |
| **metric_type** | [**MetricTagConfigurationMetricTypes**](MetricTagConfigurationMetricTypes.md) |  | [optional][default to &#39;gauge&#39;] |
| **modified_at** | **Time** | Timestamp when the tag configuration was last modified. | [optional] |
| **tags** | **Array&lt;String&gt;** | List of tag keys on which to group. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricTagConfigurationAttributes.new(
  created_at: 2020-03-31T09:48:37.463835Z,
  include_percentiles: true,
  metric_type: null,
  modified_at: 2020-03-31T09:48:37.463835Z,
  tags: [&quot;app&quot;,&quot;datacenter&quot;]
)
```

