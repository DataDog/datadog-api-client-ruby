# DatadogAPIClient::V2::MetricTagConfigurationUpdateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_percentiles** | **Boolean** | Toggle to include/exclude percentiles for a distribution metric. Defaults to false. Can only be applied to metrics that have a &#x60;metric_type&#x60; of &#x60;distribution&#x60;. | [optional][default to false] |
| **tags** | **Array&lt;String&gt;** | A list of tag keys that will be queryable for your metric. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricTagConfigurationUpdateAttributes.new(
  include_percentiles: true,
  tags: [&quot;app&quot;,&quot;datacenter&quot;]
)
```

