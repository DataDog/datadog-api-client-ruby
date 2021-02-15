# DatadogAPIClient::V1::SLOBulkDeleteError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the service level objective object associated with this error. |  |
| **message** | **String** | The error message. |  |
| **timeframe** | [**SLOErrorTimeframe**](SLOErrorTimeframe.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOBulkDeleteError.new(
  id: ,
  message: ,
  timeframe: null
)
```

