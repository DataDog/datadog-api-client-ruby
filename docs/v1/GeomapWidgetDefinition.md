# DatadogAPIClient::V1::GeomapWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md) | A list of custom links. | [optional] |
| **requests** | [**Array&lt;GeomapWidgetRequest&gt;**](GeomapWidgetRequest.md) | Array of one request object to display in the widget. The request must contain a &#x60;group-by&#x60; tag whose value is a country ISO code.  See the [Request JSON schema documentation](https://docs.datadoghq.com/dashboards/graphing_json/request_json) for information about building the &#x60;REQUEST_SCHEMA&#x60;. |  |
| **style** | [**GeomapWidgetDefinitionStyle**](GeomapWidgetDefinitionStyle.md) |  |  |
| **time** | [**WidgetTime**](WidgetTime.md) |  | [optional] |
| **title** | **String** | The title of your widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **title_size** | **String** | The size of the title. | [optional] |
| **type** | [**GeomapWidgetDefinitionType**](GeomapWidgetDefinitionType.md) |  | [default to &#39;geomap&#39;] |
| **view** | [**GeomapWidgetDefinitionView**](GeomapWidgetDefinitionView.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::GeomapWidgetDefinition.new(
  custom_links: null,
  requests: [{&quot;rum_query&quot;:&quot;&lt;METRIC_1&gt;{&lt;SCOPE_1&gt;}&quot;}],
  style: null,
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null,
  view: null
)
```

