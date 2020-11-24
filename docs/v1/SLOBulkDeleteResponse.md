# DatadogAPIClient::V1::SLOBulkDeleteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**SLOBulkDeleteResponseData**](SLOBulkDeleteResponseData.md) |  | [optional] |
| **errors** | [**Array&lt;SLOBulkDeleteResponseErrors&gt;**](SLOBulkDeleteResponseErrors.md) | Array of errors object returned. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOBulkDeleteResponse.new(
  data: null,
  errors: null
)
```

