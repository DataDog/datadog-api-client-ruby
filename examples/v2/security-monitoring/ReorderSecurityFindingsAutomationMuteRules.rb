# Reorder mute rules returns "Successfully reordered the mute rules" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.reorder_security_findings_automation_mute_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_mute_rule" in the system
VALID_MUTE_RULE_DATA_ID = ENV["VALID_MUTE_RULE_DATA_ID"]

body = DatadogAPIClient::V2::MuteRuleReorderRequest.new({
  data: [
    DatadogAPIClient::V2::MuteRuleReorderItem.new({
      id: VALID_MUTE_RULE_DATA_ID,
      type: DatadogAPIClient::V2::MuteRuleType::MUTE_RULES,
    }),
  ],
})
p api_instance.reorder_security_findings_automation_mute_rules(body)
