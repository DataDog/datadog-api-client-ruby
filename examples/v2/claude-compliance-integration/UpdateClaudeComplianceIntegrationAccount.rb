# Update a Claude Compliance integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_claude_compliance_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ClaudeComplianceIntegrationAPI.new

body = DatadogAPIClient::V2::ClaudeComplianceIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::ClaudeComplianceIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::ClaudeComplianceIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::ClaudeComplianceIntegrationAccountBearerTokenAuthUpdate.new({
        auth_type: DatadogAPIClient::V2::ClaudeComplianceIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      name: "claude-compliance-acme",
    }),
    id: "5f1a8d3c-7e2b-4f9a-b6c4-8d0e3a7f1b52",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_claude_compliance_integration_account("account_id", body)
