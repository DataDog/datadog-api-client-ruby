# DatadogAPIClient::V1::OrganizationSettingsSamlIdpInitiatedLogin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether SAML IdP initiated login is enabled, learn more in the [SAML documentation](https://docs.datadoghq.com/account_management/saml/#idp-initiated-login). | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::OrganizationSettingsSamlIdpInitiatedLogin.new(
  enabled: false
)
```

