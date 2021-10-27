# DatadogAPIClient::V1::QueryValueWidgetDefinition

## Properties

| Name             | Type                                                                    | Description                                                                | Notes                              |
| ---------------- | ----------------------------------------------------------------------- | -------------------------------------------------------------------------- | ---------------------------------- |
| **autoscale**    | **Boolean**                                                             | Whether to use auto-scaling or not.                                        | [optional]                         |
| **custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md)                | List of custom links.                                                      | [optional]                         |
| **custom_unit**  | **String**                                                              | Display a unit of your choice on the widget.                               | [optional]                         |
| **precision**    | **Integer**                                                             | Number of decimals to show. If not defined, the widget uses the raw value. | [optional]                         |
| **requests**     | [**Array&lt;QueryValueWidgetRequest&gt;**](QueryValueWidgetRequest.md)  | Widget definition.                                                         |                                    |
| **text_align**   | [**WidgetTextAlign**](WidgetTextAlign.md)                               |                                                                            | [optional]                         |
| **time**         | [**WidgetTime**](WidgetTime.md)                                         |                                                                            | [optional]                         |
| **title**        | **String**                                                              | Title of your widget.                                                      | [optional]                         |
| **title_align**  | [**WidgetTextAlign**](WidgetTextAlign.md)                               |                                                                            | [optional]                         |
| **title_size**   | **String**                                                              | Size of the title.                                                         | [optional]                         |
| **type**         | [**QueryValueWidgetDefinitionType**](QueryValueWidgetDefinitionType.md) |                                                                            | [default to &#39;query_value&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::QueryValueWidgetDefinition.new(
  autoscale: null,
  custom_links: null,
  custom_unit: null,
  precision: null,
  requests: [{&quot;q/apm_query/log_query&quot;:&quot;&lt;METRIC_1&gt;{&lt;SCOPE_1&gt;}&quot;}],
  text_align: null,
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null
)
```
