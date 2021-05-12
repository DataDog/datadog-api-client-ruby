# DatadogAPIClient::V1::NotebookCreateData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**NotebookCreateDataAttributes**](NotebookCreateDataAttributes.md) |  |  |
| **type** | [**NotebookResourceType**](NotebookResourceType.md) |  | [default to &#39;notebooks&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookCreateData.new(
  attributes: null,
  type: null
)
```

