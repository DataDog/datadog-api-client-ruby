# DatadogAPIClient::V1::DistributionWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legend_size** | **String** | (Deprecated) The widget legend was replaced by a tooltip and sidebar. | [optional] |
| **markers** | [**Array&lt;WidgetMarker&gt;**](WidgetMarker.md) | List of markers. | [optional] |
| **requests** | [**Array&lt;DistributionWidgetRequest&gt;**](DistributionWidgetRequest.md) | Array of one request object to display in the widget.  See the dedicated [Request JSON schema documentation](https://docs.datadoghq.com/dashboards/graphing_json/request_json)  to learn how to build the &#x60;REQUEST_SCHEMA&#x60;. |  |
| **show_legend** | **Boolean** | (Deprecated) The widget legend was replaced by a tooltip and sidebar. | [optional] |
| **time** | [**WidgetTime**](WidgetTime.md) |  | [optional] |
| **title** | **String** | Title of the widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **title_size** | **String** | Size of the title. | [optional] |
| **type** | [**DistributionWidgetDefinitionType**](DistributionWidgetDefinitionType.md) |  | [default to &#39;distribution&#39;] |
| **xaxis** | [**DistributionWidgetXAxis**](DistributionWidgetXAxis.md) |  | [optional] |
| **yaxis** | [**DistributionWidgetYAxis**](DistributionWidgetYAxis.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DistributionWidgetDefinition.new(
  legend_size: null,
  markers: null,
  requests: [{&quot;q&quot;:&quot;host:X tags:Y&quot;}],
  show_legend: null,
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null,
  xaxis: null,
  yaxis: null
)
```

