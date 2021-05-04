# DatadogAPIClient::V1::GroupWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **background_color** | **String** | Background color of the group title. | [optional] |
| **banner_img** | **String** | URL of image to display as a banner for the group. | [optional] |
| **layout_type** | [**WidgetLayoutType**](WidgetLayoutType.md) |  |  |
| **show_title** | **Boolean** | Whether to show the title or not. | [optional][default to true] |
| **title** | **String** | Title of the widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **type** | [**GroupWidgetDefinitionType**](GroupWidgetDefinitionType.md) |  | [default to &#39;group&#39;] |
| **widgets** | [**Array&lt;Widget&gt;**](Widget.md) | List of widget groups. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::GroupWidgetDefinition.new(
  background_color: null,
  banner_img: null,
  layout_type: null,
  show_title: null,
  title: null,
  title_align: null,
  type: null,
  widgets: [{&quot;definition&quot;:{&quot;requests&quot;:{&quot;fill&quot;:{&quot;q&quot;:&quot;system.cpu.user&quot;}},&quot;type&quot;:&quot;hostmap&quot;}}]
)
```

