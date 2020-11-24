# DatadogAPIClient::V2::LogsArchiveOrderDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**LogsArchiveOrderAttributes**](LogsArchiveOrderAttributes.md) |  |  |
| **type** | [**LogsArchiveOrderDefinitionType**](LogsArchiveOrderDefinitionType.md) |  | [default to &#39;archive_order&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsArchiveOrderDefinition.new(
  attributes: null,
  type: null
)
```

