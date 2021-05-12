# DatadogAPIClient::V1::NotebookCellResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**NotebookCellResponseAttributes**](NotebookCellResponseAttributes.md) |  |  |
| **id** | **String** | Notebook cell ID. |  |
| **type** | [**NotebookCellResourceType**](NotebookCellResourceType.md) |  | [default to &#39;notebook_cells&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookCellResponse.new(
  attributes: null,
  id: abcd1234,
  type: null
)
```

