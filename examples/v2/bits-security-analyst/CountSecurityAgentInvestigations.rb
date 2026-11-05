# Count Bits Security Analyst investigations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.count_security_agent_investigations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsSecurityAnalystAPI.new
p api_instance.count_security_agent_investigations(SecurityAgentInvestigationCountField::VERDICT)
