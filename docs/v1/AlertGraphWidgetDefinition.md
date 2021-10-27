# DatadogAPIClient::V1::AlertGraphWidgetDefinition

## Properties

| Name            | Type                                                                    | Description                           | Notes                              |
| --------------- | ----------------------------------------------------------------------- | ------------------------------------- | ---------------------------------- |
| **alert_id**    | **String**                                                              | ID of the alert to use in the widget. |                                    |
| **time**        | [**WidgetTime**](WidgetTime.md)                                         |                                       | [optional]                         |
| **title**       | **String**                                                              | The title of the widget.              | [optional]                         |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md)                               |                                       | [optional]                         |
| **title_size**  | **String**                                                              | Size of the title.                    | [optional]                         |
| **type**        | [**AlertGraphWidgetDefinitionType**](AlertGraphWidgetDefinitionType.md) |                                       | [default to &#39;alert_graph&#39;] |
| **viz_type**    | [**WidgetVizType**](WidgetVizType.md)                                   |                                       |                                    |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AlertGraphWidgetDefinition.new(
  alert_id: ,
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null,
  viz_type: null
)
```
