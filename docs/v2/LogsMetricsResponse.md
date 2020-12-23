# DatadogAPIClient::V2::LogsMetricsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;LogsMetricResponseData&gt;**](LogsMetricResponseData.md) | A list of log-based metric objects. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricsResponse.new(
  data: null
)
```

