# Update identity provider overrides for a user returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new

body = DatadogAPIClient::V2::UpdateUserIdentityProvidersRequest.new({
  data: [
    DatadogAPIClient::V2::UserRelationshipIdentityProviderData.new({
      id: "00000000-0000-0000-0000-000000000001",
      type: DatadogAPIClient::V2::UserRelationshipIdentityProviderDataType::IDENTITY_PROVIDERS,
    }),
  ],
})
api_instance.update_user_identity_providers("00000000-0000-9999-0000-000000000000", body)
