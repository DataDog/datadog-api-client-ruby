# Refresh experiment results returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new
p api_instance.refresh_experiment_results("550e8400-e29b-41d4-a716-446655440000")
