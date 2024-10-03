# Create api handle returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

body = DatadogAPIClient::V2::MicrosoftTeamsCreateTenantBasedHandleRequest.new({
  data: DatadogAPIClient::V2::MicrosoftTeamsTenantBasedHandleRequestData.new({
    attributes: DatadogAPIClient::V2::MicrosoftTeamsTenantBasedHandleRequestAttributes.new({
      channel_id: "19:iD_D2xy_sAa-JV851JJYwIa6mlW9F9Nxm3SLyZq68qY1@thread.tacv2",
      name: "Example-Microsoft-Teams-Integration",
      team_id: "e5f50a58-c929-4fb3-8866-e2cd836de3c2",
      tenant_id: "4d3bac44-0230-4732-9e70-cc00736f0a97",
    }),
    type: DatadogAPIClient::V2::MicrosoftTeamsTenantBasedHandleType::TENANT_BASED_HANDLE,
  }),
})
p api_instance.create_tenant_based_handle(body)
