# DatadogAPIClient::V1::NotebookUpdateData

## Properties

| Name           | Type                                                                | Description | Notes                            |
| -------------- | ------------------------------------------------------------------- | ----------- | -------------------------------- |
| **attributes** | [**NotebookUpdateDataAttributes**](NotebookUpdateDataAttributes.md) |             |                                  |
| **type**       | [**NotebookResourceType**](NotebookResourceType.md)                 |             | [default to &#39;notebooks&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookUpdateData.new(
  attributes: null,
  type: null
)
```
