# Update Workflows webhook handle returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

body = DatadogAPIClient::V2::MicrosoftTeamsUpdateWorkflowsWebhookHandleRequest.new({
  data: DatadogAPIClient::V2::MicrosoftTeamsUpdateWorkflowsWebhookHandleRequestData.new({
    attributes: DatadogAPIClient::V2::MicrosoftTeamsWorkflowsWebhookHandleAttributes.new({
      name: "fake-handle-name",
      url: "https://fake.url.com",
    }),
    type: DatadogAPIClient::V2::MicrosoftTeamsWorkflowsWebhookHandleType::WORKFLOWS_WEBHOOK_HANDLE,
  }),
})
p api_instance.update_workflows_webhook_handle("handle_id", body)
