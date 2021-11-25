# DatadogAPIClient::V1::SyntheticsBrowserVariable

## Properties

| Name        | Type                                                                  | Description                                          | Notes      |
| ----------- | --------------------------------------------------------------------- | ---------------------------------------------------- | ---------- |
| **example** | **String**                                                            | Example for the variable.                            | [optional] |
| **id**      | **String**                                                            | ID for the variable. Global variables require an ID. | [optional] |
| **name**    | **String**                                                            | Name of the variable.                                |            |
| **pattern** | **String**                                                            | Pattern of the variable.                             | [optional] |
| **type**    | [**SyntheticsBrowserVariableType**](SyntheticsBrowserVariableType.md) |                                                      |            |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBrowserVariable.new(
  example: null,
  id: null,
  name: VARIABLE_NAME,
  pattern: null,
  type: null
)
```
