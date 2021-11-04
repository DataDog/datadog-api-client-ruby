# DatadogAPIClient::V2::HTTPLogError

## Properties

| Name       | Type       | Description    | Notes      |
| ---------- | ---------- | -------------- | ---------- |
| **detail** | **String** | Error message. | [optional] |
| **status** | **String** | Error code.    | [optional] |
| **title**  | **String** | Error title.   | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::HTTPLogError.new(
  detail: Malformed payload,
  status: 400,
  title: Bad Request
)
```
