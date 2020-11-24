# DatadogAPIClient::V1::SLOBulkDeleteResponseErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the service level objective object associated with this error. |  |
| **message** | **String** | The error message. |  |
| **timeframe** | [**SLOErrorTimeframe**](SLOErrorTimeframe.md) |  |  |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOBulkDeleteResponseErrors.new(
  id: null,
  message: null,
  timeframe: null
)
```

