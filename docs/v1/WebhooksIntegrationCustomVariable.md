# DatadogAPIClient::V1::WebhooksIntegrationCustomVariable

## Properties

| Name          | Type        | Description                                                                                                                 | Notes |
| ------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------- | ----- |
| **is_secret** | **Boolean** | Make custom variable is secret or not. If the custom variable is secret, the value is not returned in the response payload. |       |
| **name**      | **String**  | The name of the variable. It corresponds with &#x60;&lt;CUSTOM_VARIABLE_NAME&gt;&#x60;.                                     |       |
| **value**     | **String**  | Value of the custom variable.                                                                                               |       |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WebhooksIntegrationCustomVariable.new(
  is_secret: true,
  name: CUSTOM_VARIABLE_NAME,
  value: CUSTOM_VARIABLE_VALUE
)
```
