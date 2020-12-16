# DatadogAPIClient::V1::AuthenticationValidationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid** | **Boolean** | Return &#x60;true&#x60; if the authentication response is valid. | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AuthenticationValidationResponse.new(
  valid: true
)
```

