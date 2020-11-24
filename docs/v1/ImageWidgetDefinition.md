# DatadogAPIClient::V1::ImageWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **margin** | [**WidgetMargin**](WidgetMargin.md) |  | [optional] |
| **sizing** | [**WidgetImageSizing**](WidgetImageSizing.md) |  | [optional] |
| **type** | [**ImageWidgetDefinitionType**](ImageWidgetDefinitionType.md) |  | [default to &#39;image&#39;] |
| **url** | **String** | URL of the image. |  |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ImageWidgetDefinition.new(
  margin: null,
  sizing: null,
  type: null,
  url: null
)
```

