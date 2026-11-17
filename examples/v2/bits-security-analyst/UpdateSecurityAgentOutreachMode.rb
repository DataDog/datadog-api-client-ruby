# Update the outreach mode returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_security_agent_outreach_mode".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsSecurityAnalystAPI.new

body = DatadogAPIClient::V2::SecurityAgentOutreachModeUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityAgentOutreachModeUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityAgentOutreachModeAttributes.new({
      mode: DatadogAPIClient::V2::SecurityAgentOutreachMode::AUTOMATED,
    }),
    type: DatadogAPIClient::V2::SecurityAgentOutreachPolicyType::OUTREACH_POLICY,
  }),
})
p api_instance.update_security_agent_outreach_mode(body)
