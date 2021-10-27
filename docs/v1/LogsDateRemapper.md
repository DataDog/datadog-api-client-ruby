# DatadogAPIClient::V1::LogsDateRemapper

## Properties

| Name           | Type                                                | Description                              | Notes                                |
| -------------- | --------------------------------------------------- | ---------------------------------------- | ------------------------------------ |
| **is_enabled** | **Boolean**                                         | Whether or not the processor is enabled. | [optional][default to false]         |
| **name**       | **String**                                          | Name of the processor.                   | [optional]                           |
| **sources**    | **Array&lt;String&gt;**                             | Array of source attributes.              |                                      |
| **type**       | [**LogsDateRemapperType**](LogsDateRemapperType.md) |                                          | [default to &#39;date-remapper&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsDateRemapper.new(
  is_enabled: null,
  name: null,
  sources: [&quot;web&quot;,&quot;gateway&quot;],
  type: null
)
```
