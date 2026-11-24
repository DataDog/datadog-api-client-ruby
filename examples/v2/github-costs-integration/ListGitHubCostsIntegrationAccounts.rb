# List GitHub Costs integration accounts returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_git_hub_costs_integration_accounts".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GitHubCostsIntegrationAPI.new
p api_instance.list_git_hub_costs_integration_accounts()
