# Update personal access token returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_personal_access_token".to_sym] = true
end
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

body = DatadogAPIClient::V2::PersonalAccessTokenUpdateRequest.new({
  data: DatadogAPIClient::V2::PersonalAccessTokenUpdateData.new({
    attributes: DatadogAPIClient::V2::PersonalAccessTokenUpdateAttributes.new({
      name: "Updated Personal Access Token Name",
      scopes: [
        "dashboards_read",
        "dashboards_write",
      ],
    }),
    id: "00000000-0000-0000-0000-000000000000",
    type: DatadogAPIClient::V2::PersonalAccessTokenType::PERSONAL_ACCESS_TOKENS,
  }),
})
p api_instance.update_personal_access_token("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
