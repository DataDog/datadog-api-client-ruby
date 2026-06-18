# Get a mute rule returns "Successfully retrieved the mute rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_security_findings_automation_mute_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_mute_rule" in the system
VALID_MUTE_RULE_DATA_ID = ENV["VALID_MUTE_RULE_DATA_ID"]
p api_instance.get_security_findings_automation_mute_rule(VALID_MUTE_RULE_DATA_ID)
