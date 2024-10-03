# Create handle returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

body = DatadogAPIClient::V2::MicrosoftTeamsCreateApiHandleRequest.new({
  data: DatadogAPIClient::V2::MicrosoftTeamsApiHandleRequestData.new({
    attributes: DatadogAPIClient::V2::MicrosoftTeamsApiHandleRequestAttributes.new({
      channel_id: "fake-channel-id",
      name: "fake-handle-name",
      team_id: "00000000-0000-0000-0000-000000000000",
      tenant_id: "00000000-0000-0000-0000-000000000001",
    }),
    type: DatadogAPIClient::V2::MicrosoftTeamsApiHandleType::HANDLE,
  }),
})
p api_instance.create_api_handle(body)
