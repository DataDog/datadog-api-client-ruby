# DatadogAPIClient::V1::SyntheticsParsingOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | When type is &#x60;http_header&#x60;, name of the header to use to extract the value. | [optional] |
| **name** | **String** | Name of the variable to extract. | [optional] |
| **parser** | [**SyntheticsVariableParser**](SyntheticsVariableParser.md) |  | [optional] |
| **type** | [**SyntheticsGlobalVariableParseTestOptionsType**](SyntheticsGlobalVariableParseTestOptionsType.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsParsingOptions.new(
  field: content-type,
  name: null,
  parser: null,
  type: null
)
```

