# Create a Claude Compliance integration account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_claude_compliance_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ClaudeComplianceIntegrationAPI.new

body = DatadogAPIClient::V2::ClaudeComplianceIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::ClaudeComplianceIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::ClaudeComplianceIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::ClaudeComplianceIntegrationAccountBearerTokenAuthRequest.new({
        auth_type: DatadogAPIClient::V2::ClaudeComplianceIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      name: "claude-compliance-acme",
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_claude_compliance_integration_account(body)
