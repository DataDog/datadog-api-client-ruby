# Get a CSM Threats Agent rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_csm_threats_agent_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new

# there is a valid "agent_rule_rc" in the system
AGENT_RULE_DATA_ID = ENV["AGENT_RULE_DATA_ID"]
p api_instance.get_csm_threats_agent_rule(AGENT_RULE_DATA_ID)
