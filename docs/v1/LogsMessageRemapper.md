# DatadogAPIClient::V1::LogsMessageRemapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional][default to false] |
| **name** | **String** | Name of the processor. | [optional] |
| **sources** | **Array&lt;String&gt;** | Array of source attributes. |  |
| **type** | [**LogsMessageRemapperType**](LogsMessageRemapperType.md) |  | [default to &#39;message-remapper&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsMessageRemapper.new(
  is_enabled: null,
  name: null,
  sources: [&quot;msg&quot;],
  type: null
)
```

