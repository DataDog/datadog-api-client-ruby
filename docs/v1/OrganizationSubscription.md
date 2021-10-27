# DatadogAPIClient::V1::OrganizationSubscription

## Properties

| Name     | Type       | Description                                                                                          | Notes      |
| -------- | ---------- | ---------------------------------------------------------------------------------------------------- | ---------- |
| **type** | **String** | The subscription type. Types available are &#x60;trial&#x60;, &#x60;free&#x60;, and &#x60;pro&#x60;. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::OrganizationSubscription.new(
  type: null
)
```
