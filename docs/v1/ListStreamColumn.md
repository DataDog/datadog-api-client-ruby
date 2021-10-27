# DatadogAPIClient::V1::ListStreamColumn

## Properties

| Name      | Type                                                  | Description          | Notes |
| --------- | ----------------------------------------------------- | -------------------- | ----- |
| **field** | **String**                                            | Widget column field. |       |
| **width** | [**ListStreamColumnWidth**](ListStreamColumnWidth.md) |                      |       |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ListStreamColumn.new(
  field: content,
  width: null
)
```
