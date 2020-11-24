# DatadogAPIClient::V2::LogsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Log&gt;**](Log.md) | Array of logs matching the request. | [optional] |
| **links** | [**LogsListResponseLinks**](LogsListResponseLinks.md) |  | [optional] |
| **meta** | [**LogsResponseMetadata**](LogsResponseMetadata.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsListResponse.new(
  data: null,
  links: null,
  meta: null
)
```

