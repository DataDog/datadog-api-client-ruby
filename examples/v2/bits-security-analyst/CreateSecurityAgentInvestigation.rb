# Create a Bits Security Analyst investigation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_security_agent_investigation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsSecurityAnalystAPI.new

body = DatadogAPIClient::V2::SecurityAgentInvestigationCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityAgentInvestigationCreateData.new({
    attributes: DatadogAPIClient::V2::SecurityAgentInvestigationCreateAttributes.new({
      rerun: false,
      signal_id: "AQAAAaGNHjq4XzqcIQAAAABBWm8xY0wybUFBQmNYSjl1QUFBQUFBQUE",
    }),
    type: DatadogAPIClient::V2::SecurityAgentInvestigationType::INVESTIGATIONS,
  }),
})
p api_instance.create_security_agent_investigation(body)
