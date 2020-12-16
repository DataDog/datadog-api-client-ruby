# DatadogAPIClient::V1::SyntheticsGlobalVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the global variable. |  |
| **id** | **String** | Unique identifier of the global variable. | [optional][readonly] |
| **name** | **String** | Name of the global variable. |  |
| **tags** | **Array&lt;String&gt;** | Tags of the global variable. |  |
| **value** | [**SyntheticsGlobalVariableValue**](SyntheticsGlobalVariableValue.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsGlobalVariable.new(
  description: Example description,
  id: null,
  name: MY_VARIABLE,
  tags: [&quot;team:front&quot;,&quot;test:workflow-1&quot;],
  value: null
)
```

