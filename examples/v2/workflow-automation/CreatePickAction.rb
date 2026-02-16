# Pick relevant actions returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_pick_action".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::PickActionRequest.new({
  client: DatadogAPIClient::V2::ClientType::WORKFLOWS,
  number_of_relevant_actions: 5,
  stability: DatadogAPIClient::V2::StabilityLevel::STABLE,
  user_prompt: "Send a Slack message",
})
p api_instance.create_pick_action(body)
