# DatadogAPIClient::V2::FullApplicationKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**FullApplicationKeyAttributes**](FullApplicationKeyAttributes.md) |  | [optional] |
| **id** | **String** | ID of the application key. | [optional] |
| **relationships** | [**ApplicationKeyRelationships**](ApplicationKeyRelationships.md) |  | [optional] |
| **type** | [**ApplicationKeysType**](ApplicationKeysType.md) |  | [optional][default to &#39;application_keys&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::FullApplicationKey.new(
  attributes: null,
  id: null,
  relationships: null,
  type: null
)
```

