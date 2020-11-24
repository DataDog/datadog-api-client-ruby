# DatadogAPIClient::V1::CheckCanDeleteSLOResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**CheckCanDeleteSLOResponseData**](CheckCanDeleteSLOResponseData.md) |  | [optional] |
| **errors** | **Hash&lt;String, String&gt;** | A mapping of SLO id to it&#39;s current usages. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::CheckCanDeleteSLOResponse.new(
  data: null,
  errors: null
)
```

