# DatadogAPIClient::V1::SLOHistoryResponseErrorWithType

## Properties

| Name              | Type       | Description                                  | Notes |
| ----------------- | ---------- | -------------------------------------------- | ----- |
| **error_message** | **String** | A message with more details about the error. |       |
| **error_type**    | **String** | Type of the error.                           |       |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOHistoryResponseErrorWithType.new(
  error_message: ,
  error_type:
)
```
