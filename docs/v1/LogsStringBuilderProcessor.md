# DatadogAPIClient::V1::LogsStringBuilderProcessor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional][default to false] |
| **is_replace_missing** | **Boolean** | If true, it replaces all missing attributes of &#x60;template&#x60; by an empty string. If &#x60;false&#x60; (default), skips the operation for missing attributes. | [optional][default to false] |
| **name** | **String** | Name of the processor. | [optional] |
| **target** | **String** | The name of the attribute that contains the result of the template. |  |
| **template** | **String** | A formula with one or more attributes and raw text. |  |
| **type** | [**LogsStringBuilderProcessorType**](LogsStringBuilderProcessorType.md) |  | [default to &#39;string-builder-processor&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsStringBuilderProcessor.new(
  is_enabled: null,
  is_replace_missing: null,
  name: null,
  target: ,
  template: ,
  type: null
)
```

