# DatadogAPIClient::V1::ListStreamWidgetDefinition

## Properties

| Name            | Type                                                                    | Description                                                                                                                                                        | Notes                              |
| --------------- | ----------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------- |
| **legend_size** | **String**                                                              | Available legend sizes for a widget. Should be one of \&quot;0\&quot;, \&quot;2\&quot;, \&quot;4\&quot;, \&quot;8\&quot;, \&quot;16\&quot;, or \&quot;auto\&quot;. | [optional]                         |
| **requests**    | [**Array&lt;ListStreamWidgetRequest&gt;**](ListStreamWidgetRequest.md)  | Request payload used to query items.                                                                                                                               |                                    |
| **show_legend** | **Boolean**                                                             | Whether or not to display the legend on this widget.                                                                                                               | [optional]                         |
| **time**        | [**WidgetTime**](WidgetTime.md)                                         |                                                                                                                                                                    | [optional]                         |
| **title**       | **String**                                                              | Title of the widget.                                                                                                                                               | [optional]                         |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md)                               |                                                                                                                                                                    | [optional]                         |
| **title_size**  | **String**                                                              | Size of the title.                                                                                                                                                 | [optional]                         |
| **type**        | [**ListStreamWidgetDefinitionType**](ListStreamWidgetDefinitionType.md) |                                                                                                                                                                    | [default to &#39;list_stream&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ListStreamWidgetDefinition.new(
  legend_size: null,
  requests: [{&quot;response_format&quot;:&quot;event_list&quot;},{&quot;columns&quot;:[{&quot;field&quot;:&quot;timestamp&quot;,&quot;width&quot;:&quot;auto&quot;}]},{&quot;query&quot;:{&quot;data_source&quot;:&quot;issue_stream&quot;,&quot;query_string&quot;:&quot;@data_source:APM&quot;}}],
  show_legend: null,
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null
)
```
