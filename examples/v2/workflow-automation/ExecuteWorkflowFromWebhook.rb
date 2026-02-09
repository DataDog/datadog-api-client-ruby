# Execute a workflow from a webhook returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.execute_workflow_from_webhook".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::WorkflowWebhookPayload.new({})
p api_instance.execute_workflow_from_webhook("workflow_id", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "sha256=abcdef123456...", "GitHub-Hookshot/abc123", body)
