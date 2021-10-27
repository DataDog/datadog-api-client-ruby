# DatadogAPIClient::V1::SyntheticsPrivateLocationCreationResponseResultEncryption

## Properties

| Name    | Type       | Description                         | Notes      |
| ------- | ---------- | ----------------------------------- | ---------- |
| **id**  | **String** | Fingerprint for the encryption key. | [optional] |
| **key** | **String** | Public key for result encryption.   | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsPrivateLocationCreationResponseResultEncryption.new(
  id: null,
  key: null
)
```
