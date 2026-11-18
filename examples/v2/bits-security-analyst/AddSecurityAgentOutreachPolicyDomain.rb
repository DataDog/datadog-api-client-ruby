# Add an allowed outreach domain returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.add_security_agent_outreach_policy_domain".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsSecurityAnalystAPI.new

body = DatadogAPIClient::V2::SecurityAgentOutreachDomainAddRequest.new({
  data: DatadogAPIClient::V2::SecurityAgentOutreachDomainAddRequestData.new({
    attributes: DatadogAPIClient::V2::SecurityAgentOutreachDomainAddRequestDataAttributes.new({
      domain: "acme.com",
    }),
    type: DatadogAPIClient::V2::SecurityAgentOutreachDomainAddType::OUTREACH_POLICY_DOMAIN_ADD,
  }),
})
p api_instance.add_security_agent_outreach_policy_domain(body)
