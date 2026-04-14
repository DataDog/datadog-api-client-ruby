# Update an access token for a service account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new

# there is a valid "service_account_user" in the system
SERVICE_ACCOUNT_USER_DATA_ID = ENV["SERVICE_ACCOUNT_USER_DATA_ID"]

# there is a valid "service_account_access_token" for "service_account_user"
SERVICE_ACCOUNT_ACCESS_TOKEN_DATA_ATTRIBUTES_NAME = ENV["SERVICE_ACCOUNT_ACCESS_TOKEN_DATA_ATTRIBUTES_NAME"]
SERVICE_ACCOUNT_ACCESS_TOKEN_DATA_ID = ENV["SERVICE_ACCOUNT_ACCESS_TOKEN_DATA_ID"]

body = DatadogAPIClient::V2::PersonalAccessTokenUpdateRequest.new({
  data: DatadogAPIClient::V2::PersonalAccessTokenUpdateData.new({
    id: SERVICE_ACCOUNT_ACCESS_TOKEN_DATA_ID,
    type: DatadogAPIClient::V2::PersonalAccessTokensType::PERSONAL_ACCESS_TOKENS,
    attributes: DatadogAPIClient::V2::PersonalAccessTokenUpdateAttributes.new({
      name: "My Personal Access Token-updated",
    }),
  }),
})
p api_instance.update_service_account_access_token(SERVICE_ACCOUNT_USER_DATA_ID, SERVICE_ACCOUNT_ACCESS_TOKEN_DATA_ID, body)
