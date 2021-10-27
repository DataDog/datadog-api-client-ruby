# DatadogAPIClient::V1::Log

## Properties

| Name        | Type                            | Description           | Notes      |
| ----------- | ------------------------------- | --------------------- | ---------- |
| **content** | [**LogContent**](LogContent.md) |                       | [optional] |
| **id**      | **String**                      | Unique ID of the Log. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::Log.new(
  content: null,
  id: AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA
)
```
