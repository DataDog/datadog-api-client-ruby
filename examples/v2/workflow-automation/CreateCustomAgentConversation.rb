# Create a custom agent conversation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_custom_agent_conversation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::CustomAgentConversationRequest.new({
  conversation_id: "550e8400-e29b-41d4-a716-446655440000",
  user_prompt: "What is the weather like today?",
})
p api_instance.create_custom_agent_conversation("3b796bda-b79b-477e-ae29-958473a683db", body)
