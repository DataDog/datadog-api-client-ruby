# Resume bandit returns "The bandit is running." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.resume_bandit".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new
api_instance.resume_bandit("4b1f3c2e-8d5a-4f6b-9c7e-1a2b3c4d5e6f")
