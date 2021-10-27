# DatadogAPIClient::V1::NotebookLogStreamCellAttributes

## Properties

| Name           | Type                                                          | Description | Notes      |
| -------------- | ------------------------------------------------------------- | ----------- | ---------- |
| **definition** | [**LogStreamWidgetDefinition**](LogStreamWidgetDefinition.md) |             |            |
| **graph_size** | [**NotebookGraphSize**](NotebookGraphSize.md)                 |             | [optional] |
| **time**       | [**NotebookCellTime**](NotebookCellTime.md)                   |             | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookLogStreamCellAttributes.new(
  definition: null,
  graph_size: null,
  time: null
)
```
