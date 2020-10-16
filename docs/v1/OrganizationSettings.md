# DatadogAPIClient::V1::OrganizationSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**private_widget_share** | **Boolean** | Whether or not the organization users can share widgets outside of Datadog. | [optional] 
**saml** | [**OrganizationSettingsSaml**](OrganizationSettingsSaml.md) |  | [optional] 
**saml_autocreate_access_role** | [**AccessRole**](AccessRole.md) |  | [optional] [default to &#39;st&#39;]
**saml_autocreate_users_domains** | [**OrganizationSettingsSamlAutocreateUsersDomains**](OrganizationSettingsSamlAutocreateUsersDomains.md) |  | [optional] 
**saml_can_be_enabled** | **Boolean** | Whether or not SAML can be enabled for this organization. | [optional] 
**saml_idp_endpoint** | **String** | Identity provider endpoint for SAML authentication. | [optional] 
**saml_idp_initiated_login** | [**OrganizationSettingsSamlIdpInitiatedLogin**](OrganizationSettingsSamlIdpInitiatedLogin.md) |  | [optional] 
**saml_idp_metadata_uploaded** | **Boolean** | Whether or not a SAML identity provider metadata file was provided to the Datadog organization. | [optional] 
**saml_login_url** | **String** | URL for SAML logging. | [optional] 
**saml_strict_mode** | [**OrganizationSettingsSamlStrictMode**](OrganizationSettingsSamlStrictMode.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::OrganizationSettings.new(private_widget_share: false,
                                 saml: null,
                                 saml_autocreate_access_role: null,
                                 saml_autocreate_users_domains: null,
                                 saml_can_be_enabled: false,
                                 saml_idp_endpoint: https://my.saml.endpoint,
                                 saml_idp_initiated_login: null,
                                 saml_idp_metadata_uploaded: false,
                                 saml_login_url: https://my.saml.login.url,
                                 saml_strict_mode: null)
```


