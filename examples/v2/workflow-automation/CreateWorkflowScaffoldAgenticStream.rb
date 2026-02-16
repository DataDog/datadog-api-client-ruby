# Generate workflow scaffold with agentic stream returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_workflow_scaffold_agentic_stream".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::WorkflowScaffoldAgenticStreamRequest.new({
  chat_history: [
    DatadogAPIClient::V2::ChatMessage.new({
      chat_id: "chat-456",
      content: "Add error handling to the workflow",
      id: "msg-123",
      role: DatadogAPIClient::V2::ChatMessageRole::USER,
      user_uuid: "550e8400-e29b-41d4-a716-446655440000",
    }),
  ],
  previous_action: "created_initial_scaffold",
  user_context: DatadogAPIClient::V2::UserContext.new({
    user_info: DatadogAPIClient::V2::UserInfo.new({
      org_name: "Acme Corp",
      user_email: "john.doe@example.com",
      user_name: "John Doe",
      user_uuid: "550e8400-e29b-41d4-a716-446655440000",
    }),
  }),
  user_prompt: "Create a workflow to restart a service when CPU is high",
})
p api_instance.create_workflow_scaffold_agentic_stream(body)
