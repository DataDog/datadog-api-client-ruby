# Get a Claude Compliance integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_claude_compliance_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ClaudeComplianceIntegrationAPI.new
p api_instance.get_claude_compliance_integration_account("account_id")
