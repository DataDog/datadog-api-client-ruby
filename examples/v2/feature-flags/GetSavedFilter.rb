# Get a saved filter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
p api_instance.get_saved_filter("8c051ac8-df7a-496e-b5c0-de691a411100")
