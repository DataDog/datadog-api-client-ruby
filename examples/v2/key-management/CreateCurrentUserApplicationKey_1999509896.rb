# Create an Application key for current user returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

body = DatadogAPIClient::V2::ApplicationKeyCreateRequest.new({
  data: DatadogAPIClient::V2::ApplicationKeyCreateData.new({
    type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS,
    attributes: DatadogAPIClient::V2::ApplicationKeyCreateAttributes.new({
      name: "Example-Create_an_Application_key_for_current_user_returns_Created_response",
    }),
  }),
})
p api_instance.create_current_user_application_key(body)
