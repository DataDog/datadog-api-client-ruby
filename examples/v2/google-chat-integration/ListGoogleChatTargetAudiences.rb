# Get all target audiences returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
p api_instance.list_google_chat_target_audiences("organization_binding_id")
