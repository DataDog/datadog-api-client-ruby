# Update api handle returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

# there is a valid "tenant_based_handle" in the system
TENANT_BASED_HANDLE_DATA_ATTRIBUTES_NAME = ENV["TENANT_BASED_HANDLE_DATA_ATTRIBUTES_NAME"]
TENANT_BASED_HANDLE_DATA_ID = ENV["TENANT_BASED_HANDLE_DATA_ID"]

body = DatadogAPIClient::V2::MicrosoftTeamsUpdateTenantBasedHandleRequest.new({
  data: DatadogAPIClient::V2::MicrosoftTeamsUpdateTenantBasedHandleRequestData.new({
    attributes: DatadogAPIClient::V2::MicrosoftTeamsTenantBasedHandleAttributes.new({
      name: "fake-handle-name--updated",
    }),
    type: DatadogAPIClient::V2::MicrosoftTeamsTenantBasedHandleType::TENANT_BASED_HANDLE,
  }),
})
p api_instance.update_tenant_based_handle(TENANT_BASED_HANDLE_DATA_ID, body)
