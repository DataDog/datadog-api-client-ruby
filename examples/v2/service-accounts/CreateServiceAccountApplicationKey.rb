# Create an application key for this service account returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new

# there is a valid "service_account_user" in the system
SERVICE_ACCOUNT_USER_DATA_ID = ENV["SERVICE_ACCOUNT_USER_DATA_ID"]

body = DatadogAPIClient::V2::ApplicationKeyCreateRequest.new({
  data: DatadogAPIClient::V2::ApplicationKeyCreateData.new({
    attributes: DatadogAPIClient::V2::ApplicationKeyCreateAttributes.new({
      name: "Example-Service-Account",
    }),
    type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS,
  }),
})
p api_instance.create_service_account_application_key(SERVICE_ACCOUNT_USER_DATA_ID, body)
