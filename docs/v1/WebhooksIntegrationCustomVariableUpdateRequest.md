# DatadogAPIClient::V1::WebhooksIntegrationCustomVariableUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_secret** | **Boolean** | Make custom variable is secret or not. If the custom variable is secret, the value is not returned in the response payload. | [optional] |
| **name** | **String** | The name of the variable. It corresponds with &#x60;&lt;CUSTOM_VARIABLE_NAME&gt;&#x60;. It must only contains upper-case characters, integers or underscores. | [optional] |
| **value** | **String** | Value of the custom variable. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WebhooksIntegrationCustomVariableUpdateRequest.new(
  is_secret: null,
  name: CUSTOM_VARIABLE_NAME,
  value: CUSTOM_VARIABLE_VALUE
)
```

