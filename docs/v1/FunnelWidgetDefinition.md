# DatadogAPIClient::V1::FunnelWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requests** | [**Array&lt;FunnelWidgetRequest&gt;**](FunnelWidgetRequest.md) | Request payload used to query items. |  |
| **time** | [**WidgetTime**](WidgetTime.md) |  | [optional] |
| **title** | **String** | The title of the widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **title_size** | **String** | The size of the title. | [optional] |
| **type** | [**FunnelWidgetDefinitionType**](FunnelWidgetDefinitionType.md) |  | [default to &#39;funnel&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::FunnelWidgetDefinition.new(
  requests: [{&quot;request_type&quot;:&quot;funnel&quot;},{&quot;query&quot;:{&quot;data_source&quot;:&quot;rum&quot;,&quot;query_string&quot;:&quot;@browser.name:Chrome&quot;,&quot;steps&quot;:[{&quot;facet&quot;:&quot;@view.name&quot;,&quot;value&quot;:&quot;/logs&quot;},{&quot;facet&quot;:&quot;@view.name&quot;,&quot;value&quot;:&quot;/apm/home&quot;}]}}],
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null
)
```

