# Update an identity provider returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IdentityProvidersAPI.new

body = DatadogAPIClient::V2::IdentityProviderUpdateRequest.new({
  data: DatadogAPIClient::V2::IdentityProviderUpdateData.new({
    attributes: DatadogAPIClient::V2::IdentityProviderUpdateAttributes.new({
      enabled: true,
    }),
    id: "00000000-0000-0000-0000-000000000001",
    type: DatadogAPIClient::V2::IdentityProviderType::IDENTITY_PROVIDERS,
  }),
})
p api_instance.update_identity_provider("00000000-0000-0000-0000-000000000001", body)
