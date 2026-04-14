# Create a personal access token returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

body = DatadogAPIClient::V2::PersonalAccessTokenCreateRequest.new({
  data: DatadogAPIClient::V2::PersonalAccessTokenCreateData.new({
    type: DatadogAPIClient::V2::PersonalAccessTokensType::PERSONAL_ACCESS_TOKENS,
    attributes: DatadogAPIClient::V2::PersonalAccessTokenCreateAttributes.new({
      name: "Example-Key-Management",
      scopes: [
        "dashboards_read",
      ],
      expires_at: (Time.now + 365 * 86400),
    }),
  }),
})
p api_instance.create_personal_access_token(body)
