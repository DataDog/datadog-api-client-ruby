# Update organization SAML preferences returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_org_saml_configurations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new

body = DatadogAPIClient::V2::OrgSAMLPreferencesUpdateRequest.new({
  data: DatadogAPIClient::V2::OrgSAMLPreferencesData.new({
    attributes: DatadogAPIClient::V2::OrgSAMLPreferencesAttributes.new({
      default_role_uuids: [
        "8dd1cf3c-0c75-11ea-ad28-fb5701eabc7d",
      ],
      jit_domains: [
        "example.com",
      ],
    }),
    id: "00000000-0000-0000-0000-000000000000",
    type: DatadogAPIClient::V2::OrgSAMLPreferencesType::SAML_PREFERENCES,
  }),
})
api_instance.update_org_saml_configurations(body)
