# Create an Application key with scopes for current user returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

body = DatadogAPIClient::V2::ApplicationKeyCreateRequest.new({
  data: DatadogAPIClient::V2::ApplicationKeyCreateData.new({
    type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS,
    attributes: DatadogAPIClient::V2::ApplicationKeyCreateAttributes.new({
      name: "Example-Key-Management",
      scopes: [
        "dashboards_read",
        "dashboards_write",
        "dashboards_public_share",
      ],
    }),
  }),
})
p api_instance.create_current_user_application_key(body)
