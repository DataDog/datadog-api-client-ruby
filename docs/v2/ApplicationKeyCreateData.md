# DatadogAPIClient::V2::ApplicationKeyCreateData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**ApplicationKeyCreateAttributes**](ApplicationKeyCreateAttributes.md) |  |  |
| **type** | [**ApplicationKeysType**](ApplicationKeysType.md) |  | [default to &#39;application_keys&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::ApplicationKeyCreateData.new(
  attributes: null,
  type: null
)
```

