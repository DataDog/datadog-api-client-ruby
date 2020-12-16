# DatadogAPIClient::V1::LogsAPIError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Code identifying the error | [optional] |
| **details** | [**Array&lt;LogsAPIError&gt;**](LogsAPIError.md) | Additional error details | [optional] |
| **message** | **String** | Error message | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsAPIError.new(
  code: null,
  details: null,
  message: null
)
```

