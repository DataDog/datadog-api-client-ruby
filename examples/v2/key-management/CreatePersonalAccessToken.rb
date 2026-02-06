# Create personal access token returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_personal_access_token".to_sym] = true
end
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

body = DatadogAPIClient::V2::PersonalAccessTokenCreateRequest.new({
  data: DatadogAPIClient::V2::PersonalAccessTokenCreateData.new({
    attributes: DatadogAPIClient::V2::PersonalAccessTokenCreateAttributes.new({
      expires_at: "2025-03-15T10:30:00.000000+00:00",
      name: "Example Personal Access Token",
      scopes: [
        "dashboards_read",
        "monitors_read",
      ],
    }),
    type: DatadogAPIClient::V2::PersonalAccessTokenType::PERSONAL_ACCESS_TOKENS,
  }),
})
p api_instance.create_personal_access_token(body)
