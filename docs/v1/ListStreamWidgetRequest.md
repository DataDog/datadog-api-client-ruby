# DatadogAPIClient::V1::ListStreamWidgetRequest

## Properties

| Name                | Type                                                        | Description     | Notes |
| ------------------- | ----------------------------------------------------------- | --------------- | ----- |
| **columns**         | [**Array&lt;ListStreamColumn&gt;**](ListStreamColumn.md)    | Widget columns. |       |
| **query**           | [**ListStreamQuery**](ListStreamQuery.md)                   |                 |       |
| **response_format** | [**ListStreamResponseFormat**](ListStreamResponseFormat.md) |                 |       |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ListStreamWidgetRequest.new(
  columns: [{&quot;field&quot;:&quot;timestamp&quot;,&quot;width&quot;:&quot;auto&quot;},{&quot;field&quot;:&quot;content&quot;,&quot;width&quot;:&quot;full&quot;}],
  query: null,
  response_format: null
)
```
