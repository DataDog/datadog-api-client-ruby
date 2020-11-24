# DatadogAPIClient::V1::OrganizationSettingsSamlStrictMode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether or not the SAML strict mode is enabled. If true, all users must log in with SAML. Learn more on the [SAML Strict documentation](https://docs.datadoghq.com/account_management/saml/#saml-strict). | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::OrganizationSettingsSamlStrictMode.new(
  enabled: false
)
```

