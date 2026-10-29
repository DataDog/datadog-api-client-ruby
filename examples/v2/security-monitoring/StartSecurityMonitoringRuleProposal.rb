# Start a rule proposal returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.start_security_monitoring_rule_proposal".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringRuleProposalStartRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringRuleProposalStartRequestData.new({
    type: DatadogAPIClient::V2::SecurityMonitoringRuleProposalType::RULE_PROPOSALS,
    attributes: DatadogAPIClient::V2::SecurityMonitoringRuleProposalStartRequestAttributes.new({
      input_type: DatadogAPIClient::V2::SecurityMonitoringRuleProposalInputType::NATURAL_LANGUAGE,
      input: "Detect repeated failed Okta logins followed by a successful login from the same IP.",
    }),
  }),
})
p api_instance.start_security_monitoring_rule_proposal(body)
