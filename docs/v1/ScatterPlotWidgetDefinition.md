# DatadogAPIClient::V1::ScatterPlotWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **color_by_groups** | **Array&lt;String&gt;** | List of groups used for colors. | [optional] |
| **custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md) | List of custom links. | [optional] |
| **requests** | [**ScatterPlotWidgetDefinitionRequests**](ScatterPlotWidgetDefinitionRequests.md) |  |  |
| **time** | [**WidgetTime**](WidgetTime.md) |  | [optional] |
| **title** | **String** | Title of your widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **title_size** | **String** | Size of the title. | [optional] |
| **type** | [**ScatterPlotWidgetDefinitionType**](ScatterPlotWidgetDefinitionType.md) |  | [default to &#39;scatterplot&#39;] |
| **xaxis** | [**WidgetAxis**](WidgetAxis.md) |  | [optional] |
| **yaxis** | [**WidgetAxis**](WidgetAxis.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ScatterPlotWidgetDefinition.new(
  color_by_groups: null,
  custom_links: null,
  requests: null,
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null,
  xaxis: null,
  yaxis: null
)
```

