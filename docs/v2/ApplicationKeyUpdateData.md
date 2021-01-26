# DatadogAPIClient::V2::ApplicationKeyUpdateData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**ApplicationKeyUpdateAttributes**](ApplicationKeyUpdateAttributes.md) |  |  |
| **id** | **String** | ID of the application key. |  |
| **type** | [**ApplicationKeysType**](ApplicationKeysType.md) |  | [default to &#39;application_keys&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::ApplicationKeyUpdateData.new(
  attributes: null,
  id: 00112233-4455-6677-8899-aabbccddeeff,
  type: null
)
```

