# Get space information by display name returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
p api_instance.get_space_by_display_name("datadog.ninja", "api-test-space")
