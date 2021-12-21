# DatadogAPIClient::V1::SunburstWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md) | List of custom links. | [optional] |
| **hide_total** | **Boolean** | Show the total value in this widget. | [optional] |
| **legend** | [**SunburstWidgetLegend**](SunburstWidgetLegend.md) |  | [optional] |
| **requests** | [**Array&lt;SunburstWidgetRequest&gt;**](SunburstWidgetRequest.md) | List of sunburst widget requests. |  |
| **time** | [**WidgetTime**](WidgetTime.md) |  | [optional] |
| **title** | **String** | Title of your widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **title_size** | **String** | Size of the title. | [optional] |
| **type** | [**SunburstWidgetDefinitionType**](SunburstWidgetDefinitionType.md) |  | [default to &#39;sunburst&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SunburstWidgetDefinition.new(
  custom_links: null,
  hide_total: null,
  legend: null,
  requests: [{&quot;q/apm_query/log_query&quot;:&quot;&lt;METRIC_1&gt;{&lt;SCOPE_1&gt;}&quot;}],
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null
)
```

