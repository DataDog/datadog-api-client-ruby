# Start a progressive rollout returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
p api_instance.start_exposure_schedule("550e8400-e29b-41d4-a716-446655440010")
