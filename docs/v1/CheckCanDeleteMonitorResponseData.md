# DatadogAPIClient::V1::CheckCanDeleteMonitorResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Array&lt;Integer&gt;** | An array of of Monitor IDs that can be safely deleted. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::CheckCanDeleteMonitorResponseData.new(
  ok: null
)
```

