# Update workflow webhook handle returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

# there is a valid "workflows_webhook_handle" in the system
WORKFLOWS_WEBHOOK_HANDLE_DATA_ATTRIBUTES_NAME = ENV["WORKFLOWS_WEBHOOK_HANDLE_DATA_ATTRIBUTES_NAME"]
WORKFLOWS_WEBHOOK_HANDLE_DATA_ID = ENV["WORKFLOWS_WEBHOOK_HANDLE_DATA_ID"]

body = DatadogAPIClient::V2::MicrosoftTeamsUpdateWorkflowsWebhookHandleRequest.new({
  data: DatadogAPIClient::V2::MicrosoftTeamsUpdateWorkflowsWebhookHandleRequestData.new({
    attributes: DatadogAPIClient::V2::MicrosoftTeamsWorkflowsWebhookHandleAttributes.new({
      name: "fake-handle-name--updated",
    }),
    type: DatadogAPIClient::V2::MicrosoftTeamsWorkflowsWebhookHandleType::WORKFLOWS_WEBHOOK_HANDLE,
  }),
})
p api_instance.update_workflows_webhook_handle(WORKFLOWS_WEBHOOK_HANDLE_DATA_ID, body)
