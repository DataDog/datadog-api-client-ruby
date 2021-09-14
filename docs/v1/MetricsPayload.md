# DatadogAPIClient::V1::MetricsPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **series** | [**Array&lt;Series&gt;**](Series.md) | A list of time series to submit to Datadog. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MetricsPayload.new(
  series: [{&quot;metric&quot;:&quot;system.load.1&quot;,&quot;points&quot;:[[1.475317847E9,0.7]]}]
)
```

