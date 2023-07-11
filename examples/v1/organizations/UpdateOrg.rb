# Update your organization returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::OrganizationsAPI.new

body = DatadogAPIClient::V1::Organization.new({
  billing: DatadogAPIClient::V1::OrganizationBilling.new({
    type: "parent_billing",
  }),
  description: "some description",
  name: "New child org",
  public_id: "abcdef12345",
  settings: DatadogAPIClient::V1::OrganizationSettings.new({
    private_widget_share: false,
    saml: DatadogAPIClient::V1::OrganizationSettingsSaml.new({
      enabled: false,
    }),
    saml_autocreate_access_role: DatadogAPIClient::V1::AccessRole::READ_ONLY,
    saml_autocreate_users_domains: DatadogAPIClient::V1::OrganizationSettingsSamlAutocreateUsersDomains.new({
      domains: [
        "example.com",
      ],
      enabled: false,
    }),
    saml_can_be_enabled: false,
    saml_idp_endpoint: "https://my.saml.endpoint",
    saml_idp_initiated_login: DatadogAPIClient::V1::OrganizationSettingsSamlIdpInitiatedLogin.new({
      enabled: false,
    }),
    saml_idp_metadata_uploaded: false,
    saml_login_url: "https://my.saml.login.url",
    saml_strict_mode: DatadogAPIClient::V1::OrganizationSettingsSamlStrictMode.new({
      enabled: false,
    }),
  }),
  subscription: DatadogAPIClient::V1::OrganizationSubscription.new({
    type: "pro",
  }),
  trial: false,
})
p api_instance.update_org("abc123", body)
