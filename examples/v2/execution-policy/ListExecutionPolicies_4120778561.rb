# List execution policies filtered by Slack returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_execution_policies".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExecutionPolicyAPI.new
opts = {
  filter_integration: [
    ExecutionPolicyIntegration::INTEGRATION_SLACK,
  ],
}
p api_instance.list_execution_policies(opts)
