# DatadogAPIClient::V1::TimeseriesWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md) | List of custom links. | [optional] |
| **events** | [**Array&lt;WidgetEvent&gt;**](WidgetEvent.md) | List of widget events. | [optional] |
| **legend_columns** | **Array&lt;String&gt;** | Columns displayed in the legend. | [optional] |
| **legend_layout** | [**TimeseriesWidgetLegendLayout**](TimeseriesWidgetLegendLayout.md) |  | [optional] |
| **legend_size** | **String** | Available legend sizes for a widget. Should be one of \&quot;0\&quot;, \&quot;2\&quot;, \&quot;4\&quot;, \&quot;8\&quot;, \&quot;16\&quot;, or \&quot;auto\&quot;. | [optional] |
| **markers** | [**Array&lt;WidgetMarker&gt;**](WidgetMarker.md) | List of markers. | [optional] |
| **requests** | [**Array&lt;TimeseriesWidgetRequest&gt;**](TimeseriesWidgetRequest.md) | List of timeseries widget requests. |  |
| **right_yaxis** | [**WidgetAxis**](WidgetAxis.md) |  | [optional] |
| **show_legend** | **Boolean** | (screenboard only) Show the legend for this widget. | [optional] |
| **time** | [**WidgetTime**](WidgetTime.md) |  | [optional] |
| **title** | **String** | Title of your widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **title_size** | **String** | Size of the title. | [optional] |
| **type** | [**TimeseriesWidgetDefinitionType**](TimeseriesWidgetDefinitionType.md) |  | [default to &#39;timeseries&#39;] |
| **yaxis** | [**WidgetAxis**](WidgetAxis.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TimeseriesWidgetDefinition.new(
  custom_links: null,
  events: null,
  legend_columns: null,
  legend_layout: null,
  legend_size: null,
  markers: null,
  requests: [{&quot;q/apm_query/log_query&quot;:&quot;&lt;METRIC_1&gt;{&lt;SCOPE_1&gt;}&quot;}],
  right_yaxis: null,
  show_legend: null,
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null,
  yaxis: null
)
```

