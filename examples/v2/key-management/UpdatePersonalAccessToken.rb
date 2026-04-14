# Update a personal access token returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

# there is a valid "personal_access_token" in the system
PERSONAL_ACCESS_TOKEN_DATA_ID = ENV["PERSONAL_ACCESS_TOKEN_DATA_ID"]

body = DatadogAPIClient::V2::PersonalAccessTokenUpdateRequest.new({
  data: DatadogAPIClient::V2::PersonalAccessTokenUpdateData.new({
    type: DatadogAPIClient::V2::PersonalAccessTokensType::PERSONAL_ACCESS_TOKENS,
    id: PERSONAL_ACCESS_TOKEN_DATA_ID,
    attributes: DatadogAPIClient::V2::PersonalAccessTokenUpdateAttributes.new({
      name: "Example-Key-Management-updated",
    }),
  }),
})
p api_instance.update_personal_access_token(PERSONAL_ACCESS_TOKEN_DATA_ID, body)
