# DatadogAPIClient::V2::LogsMetricResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**LogsMetricResponseAttributes**](LogsMetricResponseAttributes.md) |  | [optional] |
| **id** | **String** | The name of the log-based metric. | [optional] |
| **type** | [**LogsMetricType**](LogsMetricType.md) |  | [optional][default to &#39;logs_metrics&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricResponseData.new(
  attributes: null,
  id: logs.page.load.count,
  type: null
)
```

