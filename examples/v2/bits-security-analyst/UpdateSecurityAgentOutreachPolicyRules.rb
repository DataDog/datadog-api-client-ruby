# Update outreach policy rules returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_security_agent_outreach_policy_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsSecurityAnalystAPI.new

body = DatadogAPIClient::V2::SecurityAgentOutreachRulesUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityAgentOutreachRulesUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::SecurityAgentOutreachRulesUpdateAttributes.new({
      rules: [
        DatadogAPIClient::V2::SecurityAgentOutreachRuleUpdate.new({
          is_enabled: true,
          rule_id: "abc-def-ghi",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::SecurityAgentOutreachRulesUpdateType::OUTREACH_POLICY_RULES_UPDATE,
  }),
})
p api_instance.update_security_agent_outreach_policy_rules(body)
