# DatadogAPIClient::V1::NotebooksResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author** | [**NotebookAuthor**](NotebookAuthor.md) |  | [optional] |
| **cells** | [**Array&lt;NotebookCellResponse&gt;**](NotebookCellResponse.md) | List of cells to display in the notebook. | [optional] |
| **created** | **Time** | UTC time stamp for when the notebook was created. | [optional][readonly] |
| **metadata** | [**NotebookMetadata**](NotebookMetadata.md) |  | [optional] |
| **modified** | **Time** | UTC time stamp for when the notebook was last modified. | [optional][readonly] |
| **name** | **String** | The name of the notebook. |  |
| **status** | [**NotebookStatus**](NotebookStatus.md) |  | [optional][default to &#39;published&#39;] |
| **time** | [**NotebookGlobalTime**](NotebookGlobalTime.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebooksResponseDataAttributes.new(
  author: null,
  cells: null,
  created: 2021-02-24T23:14:15.173964Z,
  metadata: null,
  modified: 2021-02-24T23:15:23.274966Z,
  name: Example Notebook,
  status: null,
  time: null
)
```

