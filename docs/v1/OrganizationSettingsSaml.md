# DatadogAPIClient::V1::OrganizationSettingsSaml

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether or not SAML is enabled for this organization. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::OrganizationSettingsSaml.new(
  enabled: false
)
```

