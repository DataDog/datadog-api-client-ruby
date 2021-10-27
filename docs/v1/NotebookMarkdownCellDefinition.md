# DatadogAPIClient::V1::NotebookMarkdownCellDefinition

## Properties

| Name     | Type                                                                            | Description           | Notes                           |
| -------- | ------------------------------------------------------------------------------- | --------------------- | ------------------------------- |
| **text** | **String**                                                                      | The markdown content. |                                 |
| **type** | [**NotebookMarkdownCellDefinitionType**](NotebookMarkdownCellDefinitionType.md) |                       | [default to &#39;markdown&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookMarkdownCellDefinition.new(
  text: # Example Header
example content,
  type: null
)
```
