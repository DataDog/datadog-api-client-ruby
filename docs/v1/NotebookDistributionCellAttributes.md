# DatadogAPIClient::V1::NotebookDistributionCellAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **definition** | [**DistributionWidgetDefinition**](DistributionWidgetDefinition.md) |  |  |
| **graph_size** | [**NotebookGraphSize**](NotebookGraphSize.md) |  | [optional] |
| **split_by** | [**NotebookSplitBy**](NotebookSplitBy.md) |  | [optional] |
| **time** | [**NotebookCellTime**](NotebookCellTime.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookDistributionCellAttributes.new(
  definition: null,
  graph_size: null,
  split_by: null,
  time: null
)
```

