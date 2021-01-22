# DatadogAPIClient::V1::ChangeWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md) | List of custom links. | [optional] |
| **requests** | [**Array&lt;ChangeWidgetRequest&gt;**](ChangeWidgetRequest.md) | Array of one request object to display in the widget.  See the dedicated [Request JSON schema documentation](https://docs.datadoghq.com/dashboards/graphing_json/request_json)  to learn how to build the &#x60;REQUEST_SCHEMA&#x60;. |  |
| **time** | [**WidgetTime**](WidgetTime.md) |  | [optional] |
| **title** | **String** | Title of the widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **title_size** | **String** | Size of the title. | [optional] |
| **type** | [**ChangeWidgetDefinitionType**](ChangeWidgetDefinitionType.md) |  | [default to &#39;change&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ChangeWidgetDefinition.new(
  custom_links: null,
  requests: [{&quot;q/apm_query/log_query&quot;:&quot;&lt;METRIC_1&gt;{&lt;SCOPE_1&gt;}&quot;}],
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null
)
```

