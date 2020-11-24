# DatadogAPIClient::V2::ProcessSummariesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ProcessSummary&gt;**](ProcessSummary.md) | Array of process summary objects. | [optional] |
| **meta** | [**ProcessSummariesMeta**](ProcessSummariesMeta.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::ProcessSummariesResponse.new(
  data: null,
  meta: null
)
```

