# DatadogAPIClient::V1::NotebookHeatMapCellAttributes

## Properties

| Name           | Type                                                      | Description | Notes      |
| -------------- | --------------------------------------------------------- | ----------- | ---------- |
| **definition** | [**HeatMapWidgetDefinition**](HeatMapWidgetDefinition.md) |             |            |
| **graph_size** | [**NotebookGraphSize**](NotebookGraphSize.md)             |             | [optional] |
| **split_by**   | [**NotebookSplitBy**](NotebookSplitBy.md)                 |             | [optional] |
| **time**       | [**NotebookCellTime**](NotebookCellTime.md)               |             | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookHeatMapCellAttributes.new(
  definition: null,
  graph_size: null,
  split_by: null,
  time: null
)
```
