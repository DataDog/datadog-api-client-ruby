# DatadogAPIClient::V1::SyntheticsPrivateLocationSecrets

## Properties

| Name                  | Type                                                                                                        | Description | Notes      |
| --------------------- | ----------------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **authentication**    | [**SyntheticsPrivateLocationSecretsAuthentication**](SyntheticsPrivateLocationSecretsAuthentication.md)     |             | [optional] |
| **config_decryption** | [**SyntheticsPrivateLocationSecretsConfigDecryption**](SyntheticsPrivateLocationSecretsConfigDecryption.md) |             | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsPrivateLocationSecrets.new(
  authentication: null,
  config_decryption: null
)
```
