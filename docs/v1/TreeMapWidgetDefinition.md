# DatadogAPIClient::V1::TreeMapWidgetDefinition

## Properties

| Name         | Type                                                              | Description                       | Notes                          |
| ------------ | ----------------------------------------------------------------- | --------------------------------- | ------------------------------ |
| **color_by** | [**TreeMapColorBy**](TreeMapColorBy.md)                           |                                   | [default to &#39;user&#39;]    |
| **group_by** | [**TreeMapGroupBy**](TreeMapGroupBy.md)                           |                                   |                                |
| **requests** | [**Array&lt;TreeMapWidgetRequest&gt;**](TreeMapWidgetRequest.md)  | List of top list widget requests. |                                |
| **size_by**  | [**TreeMapSizeBy**](TreeMapSizeBy.md)                             |                                   |                                |
| **title**    | **String**                                                        | Title of your widget.             | [optional]                     |
| **type**     | [**TreeMapWidgetDefinitionType**](TreeMapWidgetDefinitionType.md) |                                   | [default to &#39;treemap&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TreeMapWidgetDefinition.new(
  color_by: null,
  group_by: null,
  requests: [{&quot;q&quot;:&quot;system.load.1&quot;}],
  size_by: null,
  title: null,
  type: null
)
```
