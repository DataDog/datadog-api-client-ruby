# DatadogAPIClient::V1::NotebookCellCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**NotebookCellCreateRequestAttributes**](NotebookCellCreateRequestAttributes.md) |  |  |
| **type** | [**NotebookCellResourceType**](NotebookCellResourceType.md) |  | [default to &#39;notebook_cells&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookCellCreateRequest.new(
  attributes: null,
  type: null
)
```

