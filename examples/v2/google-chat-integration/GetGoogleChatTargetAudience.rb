# Get a target audience returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
p api_instance.get_google_chat_target_audience("organization_binding_id", "target_audience_id")
