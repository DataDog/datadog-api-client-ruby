# DatadogAPIClient::V1::LogsArithmeticProcessor

## Properties

| Name                   | Type                                                              | Description                                                                                                                                              | Notes                                       |
| ---------------------- | ----------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------- |
| **expression**         | **String**                                                        | Arithmetic operation between one or more log attributes.                                                                                                 |                                             |
| **is_enabled**         | **Boolean**                                                       | Whether or not the processor is enabled.                                                                                                                 | [optional][default to false]                |
| **is_replace_missing** | **Boolean**                                                       | If &#x60;true&#x60;, it replaces all missing attributes of expression by &#x60;0&#x60;, &#x60;false&#x60; skip the operation if an attribute is missing. | [optional][default to false]                |
| **name**               | **String**                                                        | Name of the processor.                                                                                                                                   | [optional]                                  |
| **target**             | **String**                                                        | Name of the attribute that contains the result of the arithmetic operation.                                                                              |                                             |
| **type**               | [**LogsArithmeticProcessorType**](LogsArithmeticProcessorType.md) |                                                                                                                                                          | [default to &#39;arithmetic-processor&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsArithmeticProcessor.new(
  expression: ,
  is_enabled: null,
  is_replace_missing: null,
  name: null,
  target: ,
  type: null
)
```
