# DatadogAPIClient::V1::TableWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md) | List of custom links. | [optional] |
| **has_search_bar** | [**TableWidgetHasSearchBar**](TableWidgetHasSearchBar.md) |  | [optional] |
| **requests** | [**Array&lt;TableWidgetRequest&gt;**](TableWidgetRequest.md) | Widget definition. |  |
| **time** | [**WidgetTime**](WidgetTime.md) |  | [optional] |
| **title** | **String** | Title of your widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **title_size** | **String** | Size of the title. | [optional] |
| **type** | [**TableWidgetDefinitionType**](TableWidgetDefinitionType.md) |  | [default to &#39;query_table&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TableWidgetDefinition.new(
  custom_links: null,
  has_search_bar: null,
  requests: [{&quot;q/apm_query/log_query&quot;:&quot;&lt;METRIC_1&gt;{&lt;SCOPE_1&gt;}&quot;}],
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null
)
```

