# DatadogAPIClient::V2::LogsMetricCreateData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**LogsMetricCreateAttributes**](LogsMetricCreateAttributes.md) |  |  |
| **id** | **String** | The name of the log-based metric. |  |
| **type** | [**LogsMetricType**](LogsMetricType.md) |  | [default to &#39;logs_metrics&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricCreateData.new(
  attributes: null,
  id: logs.page.load.count,
  type: null
)
```

