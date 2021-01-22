# DatadogAPIClient::V1::HeatMapWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md) | List of custom links. | [optional] |
| **events** | [**Array&lt;WidgetEvent&gt;**](WidgetEvent.md) | List of widget events. | [optional] |
| **legend_size** | **String** | Available legend sizes for a widget. Should be one of \&quot;0\&quot;, \&quot;2\&quot;, \&quot;4\&quot;, \&quot;8\&quot;, \&quot;16\&quot;, or \&quot;auto\&quot;. | [optional] |
| **requests** | [**Array&lt;HeatMapWidgetRequest&gt;**](HeatMapWidgetRequest.md) | List of widget types. |  |
| **show_legend** | **Boolean** | Whether or not to display the legend on this widget. | [optional] |
| **time** | [**WidgetTime**](WidgetTime.md) |  | [optional] |
| **title** | **String** | Title of the widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **title_size** | **String** | Size of the title. | [optional] |
| **type** | [**HeatMapWidgetDefinitionType**](HeatMapWidgetDefinitionType.md) |  | [default to &#39;heatmap&#39;] |
| **yaxis** | [**WidgetAxis**](WidgetAxis.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HeatMapWidgetDefinition.new(
  custom_links: null,
  events: null,
  legend_size: null,
  requests: [{&quot;q&quot;:&quot;jvm.heap.memory&quot;}],
  show_legend: null,
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null,
  yaxis: null
)
```

