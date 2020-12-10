# DatadogAPIClient::V1::NoteWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **background_color** | **String** | Background color of the note. | [optional] |
| **content** | **String** | Content of the note. |  |
| **font_size** | **String** | Size of the text. | [optional] |
| **show_tick** | **Boolean** | Whether to show a tick or not. | [optional] |
| **text_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **tick_edge** | [**WidgetTickEdge**](WidgetTickEdge.md) |  | [optional] |
| **tick_pos** | **String** | Where to position the tick on an edge. | [optional] |
| **type** | [**NoteWidgetDefinitionType**](NoteWidgetDefinitionType.md) |  | [default to &#39;note&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NoteWidgetDefinition.new(
  background_color: null,
  content: ,
  font_size: null,
  show_tick: null,
  text_align: null,
  tick_edge: null,
  tick_pos: null,
  type: null
)
```

