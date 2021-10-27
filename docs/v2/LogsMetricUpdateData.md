# DatadogAPIClient::V2::LogsMetricUpdateData

## Properties

| Name           | Type                                                            | Description | Notes                               |
| -------------- | --------------------------------------------------------------- | ----------- | ----------------------------------- |
| **attributes** | [**LogsMetricUpdateAttributes**](LogsMetricUpdateAttributes.md) |             |                                     |
| **type**       | [**LogsMetricType**](LogsMetricType.md)                         |             | [default to &#39;logs_metrics&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricUpdateData.new(
  attributes: null,
  type: null
)
```
