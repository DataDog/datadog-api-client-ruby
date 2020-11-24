# DatadogAPIClient::V1::LogsTraceRemapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional][default to false] |
| **name** | **String** | Name of the processor. | [optional] |
| **sources** | **Array&lt;String&gt;** | Array of source attributes. | [optional] |
| **type** | [**LogsTraceRemapperType**](LogsTraceRemapperType.md) |  | [default to &#39;trace-id-remapper&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsTraceRemapper.new(
  is_enabled: null,
  name: null,
  sources: null,
  type: null
)
```

