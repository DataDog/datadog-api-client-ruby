# DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptions

## Properties

| Name       | Type                                                                                                | Description                                                                           | Notes      |
| ---------- | --------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ---------- |
| **field**  | **String**                                                                                          | When type is &#x60;http_header&#x60;, name of the header to use to extract the value. | [optional] |
| **parser** | [**SyntheticsVariableParser**](SyntheticsVariableParser.md)                                         |                                                                                       |            |
| **type**   | [**SyntheticsGlobalVariableParseTestOptionsType**](SyntheticsGlobalVariableParseTestOptionsType.md) |                                                                                       |            |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptions.new(
  field: content-type,
  parser: null,
  type: null
)
```
