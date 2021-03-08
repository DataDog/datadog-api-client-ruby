# DatadogAPIClient::V1::SyntheticsVariableParser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**SyntheticsGlobalVariableParserType**](SyntheticsGlobalVariableParserType.md) |  |  |
| **value** | **String** | Regex or JSON path used for the parser. Not used with type &#x60;raw&#x60;. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsVariableParser.new(
  type: null,
  value: null
)
```

