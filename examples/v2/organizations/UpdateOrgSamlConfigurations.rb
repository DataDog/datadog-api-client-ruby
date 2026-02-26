# Update organization SAML preferences returns "No Content - The SAML preferences were successfully updated." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_org_saml_configurations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new

body = DatadogAPIClient::V2::SamlConfigurationsUpdateRequest.new({
  data: DatadogAPIClient::V2::SamlConfigurationsUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::SamlConfigurationsUpdateAttributes.new({
      default_role_uuids: [
        "19fcc38b-b651-46a0-b463-1f8f56c6a862",
      ],
      jit_domains: [
        "example1.com",
        "example2.com",
      ],
    }),
    type: DatadogAPIClient::V2::SamlConfigurationsUpdateRequestDataType::SAML_PREFERENCES,
  }),
})
api_instance.update_org_saml_configurations(body)
