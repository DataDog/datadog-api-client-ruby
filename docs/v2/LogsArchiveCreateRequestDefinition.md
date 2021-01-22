# DatadogAPIClient::V2::LogsArchiveCreateRequestDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**LogsArchiveCreateRequestAttributes**](LogsArchiveCreateRequestAttributes.md) |  | [optional] |
| **type** | **String** | The type of the resource. The value should always be archives. | [default to &#39;archives&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsArchiveCreateRequestDefinition.new(
  attributes: null,
  type: archives
)
```

