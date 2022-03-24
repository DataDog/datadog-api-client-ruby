# Create an application key for this service account returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new

body = DatadogAPIClient::V2::ApplicationKeyCreateRequest.new({
  data: DatadogAPIClient::V2::ApplicationKeyCreateData.new({
    attributes: DatadogAPIClient::V2::ApplicationKeyCreateAttributes.new({
      name: "Application Key for managing dashboards",
      scopes: [
        "dashboards_read",
        "dashboards_write",
        "dashboards_public_share",
      ],
    }),
    type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS,
  }),
})
p api_instance.create_service_account_application_key("00000000-0000-1234-0000-000000000000", body)
