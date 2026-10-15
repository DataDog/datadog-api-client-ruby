# Get a saved filter returns a saved list

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
p api_instance.get_saved_filter("fb44ff15-fe17-4bab-afe8-9a8eb0cf586c")
