# DatadogAPIClient::V1::SyntheticsListGlobalVariablesResponse

## Properties

| Name          | Type                                                                     | Description                          | Notes      |
| ------------- | ------------------------------------------------------------------------ | ------------------------------------ | ---------- |
| **variables** | [**Array&lt;SyntheticsGlobalVariable&gt;**](SyntheticsGlobalVariable.md) | Array of Synthetic global variables. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsListGlobalVariablesResponse.new(
  variables: null
)
```
