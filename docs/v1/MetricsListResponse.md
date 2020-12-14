# DatadogAPIClient::V1::MetricsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Time when the metrics were active, seconds since the Unix epoch. | [optional] |
| **metrics** | **Array&lt;String&gt;** | List of metric names. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MetricsListResponse.new(
  from: null,
  metrics: null
)
```

