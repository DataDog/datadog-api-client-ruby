# Get bandit results returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_bandit_results".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new
p api_instance.get_bandit_results("4b1f3c2e-8d5a-4f6b-9c7e-1a2b3c4d5e6f")
