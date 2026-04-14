# Create an access token for a service account returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new

# there is a valid "service_account_user" in the system
SERVICE_ACCOUNT_USER_DATA_ID = ENV["SERVICE_ACCOUNT_USER_DATA_ID"]

body = DatadogAPIClient::V2::ServiceAccountAccessTokenCreateRequest.new({
  data: DatadogAPIClient::V2::ServiceAccountAccessTokenCreateData.new({
    type: DatadogAPIClient::V2::PersonalAccessTokensType::PERSONAL_ACCESS_TOKENS,
    attributes: DatadogAPIClient::V2::ServiceAccountAccessTokenCreateAttributes.new({
      name: "Example-Service-Account",
      scopes: [
        "dashboards_read",
      ],
    }),
  }),
})
p api_instance.create_service_account_access_token(SERVICE_ACCOUNT_USER_DATA_ID, body)
