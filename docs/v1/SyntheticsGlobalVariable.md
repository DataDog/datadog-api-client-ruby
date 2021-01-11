# DatadogAPIClient::V1::SyntheticsGlobalVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the global variable. |  |
| **id** | **String** | Unique identifier of the global variable. | [optional][readonly] |
| **name** | **String** | Name of the global variable. |  |
| **parse_test_options** | [**SyntheticsGlobalVariableParseTestOptions**](SyntheticsGlobalVariableParseTestOptions.md) |  | [optional] |
| **parse_test_public_id** | **String** | A Synthetic test ID to use as a test to generate the variable value. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags of the global variable. |  |
| **value** | [**SyntheticsGlobalVariableValue**](SyntheticsGlobalVariableValue.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsGlobalVariable.new(
  description: Example description,
  id: null,
  name: MY_VARIABLE,
  parse_test_options: null,
  parse_test_public_id: abc-def-123,
  tags: [&quot;team:front&quot;,&quot;test:workflow-1&quot;],
  value: null
)
```

