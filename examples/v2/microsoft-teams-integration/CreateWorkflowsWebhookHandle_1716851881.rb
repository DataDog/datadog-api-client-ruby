# Create workflow webhook handle returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

body = DatadogAPIClient::V2::MicrosoftTeamsCreateWorkflowsWebhookHandleRequest.new({
  data: DatadogAPIClient::V2::MicrosoftTeamsWorkflowsWebhookHandleRequestData.new({
    attributes: DatadogAPIClient::V2::MicrosoftTeamsWorkflowsWebhookHandleRequestAttributes.new({
      name: "Example-Microsoft-Teams-Integration",
      url: "https://fake.url.com",
    }),
    type: DatadogAPIClient::V2::MicrosoftTeamsWorkflowsWebhookHandleType::WORKFLOWS_WEBHOOK_HANDLE,
  }),
})
p api_instance.create_workflows_webhook_handle(body)
