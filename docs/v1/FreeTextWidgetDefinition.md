# DatadogAPIClient::V1::FreeTextWidgetDefinition

## Properties

| Name           | Type                                                                | Description        | Notes                            |
| -------------- | ------------------------------------------------------------------- | ------------------ | -------------------------------- |
| **color**      | **String**                                                          | Color of the text. | [optional]                       |
| **font_size**  | **String**                                                          | Size of the text.  | [optional]                       |
| **text**       | **String**                                                          | Text to display.   |                                  |
| **text_align** | [**WidgetTextAlign**](WidgetTextAlign.md)                           |                    | [optional]                       |
| **type**       | [**FreeTextWidgetDefinitionType**](FreeTextWidgetDefinitionType.md) |                    | [default to &#39;free_text&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::FreeTextWidgetDefinition.new(
  color: null,
  font_size: null,
  text: ,
  text_align: null,
  type: null
)
```
