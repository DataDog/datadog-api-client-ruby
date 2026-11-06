# Create a Custom OIDC persona mapping returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_oidc_cloud_auth_persona_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new

# there is a valid "oidc_cloud_auth_provider" in the system
OIDC_CLOUD_AUTH_PROVIDER_DATA_ID = ENV["OIDC_CLOUD_AUTH_PROVIDER_DATA_ID"]

# there is a valid "service_account_user_with_role" in the system
SERVICE_ACCOUNT_USER_WITH_ROLE_DATA_ID = ENV["SERVICE_ACCOUNT_USER_WITH_ROLE_DATA_ID"]

body = DatadogAPIClient::V2::OIDCCloudAuthPersonaMappingCreateRequest.new({
  data: DatadogAPIClient::V2::OIDCCloudAuthPersonaMappingCreateData.new({
    type: DatadogAPIClient::V2::OIDCCloudAuthPersonaMappingType::CUSTOM_OIDC_IDENTITY_MAPPING,
    attributes: DatadogAPIClient::V2::OIDCCloudAuthPersonaMappingCreateAttributes.new({
      provider_id: OIDC_CLOUD_AUTH_PROVIDER_DATA_ID,
      account_uuid: SERVICE_ACCOUNT_USER_WITH_ROLE_DATA_ID,
      claim_matchers: [
        DatadogAPIClient::V2::OIDCCloudAuthClaimMatcherCreate.new({
          claim: "sub",
          mode: DatadogAPIClient::V2::OIDCCloudAuthClaimMatchMode::EXACT,
          values: [
            "system:serviceaccount:controllers:example-controller",
          ],
        }),
      ],
    }),
  }),
})
p api_instance.create_oidc_cloud_auth_persona_mapping(body)
