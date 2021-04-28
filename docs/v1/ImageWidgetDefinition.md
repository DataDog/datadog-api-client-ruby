# DatadogAPIClient::V1::ImageWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_background** | **Boolean** | Whether to display a background or not. | [optional][default to true] |
| **has_border** | **Boolean** | Whether to display a border or not. | [optional][default to true] |
| **horizontal_align** | [**WidgetHorizontalAlign**](WidgetHorizontalAlign.md) |  | [optional] |
| **margin** | [**WidgetMargin**](WidgetMargin.md) |  | [optional] |
| **sizing** | [**WidgetImageSizing**](WidgetImageSizing.md) |  | [optional] |
| **type** | [**ImageWidgetDefinitionType**](ImageWidgetDefinitionType.md) |  | [default to &#39;image&#39;] |
| **url** | **String** | URL of the image. |  |
| **url_dark_theme** | **String** | URL of the image in dark mode. | [optional] |
| **vertical_align** | [**WidgetVerticalAlign**](WidgetVerticalAlign.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ImageWidgetDefinition.new(
  has_background: true,
  has_border: true,
  horizontal_align: null,
  margin: null,
  sizing: null,
  type: null,
  url: https://example.com/image.png,
  url_dark_theme: https://example.com/image-dark-mode.png,
  vertical_align: null
)
```

