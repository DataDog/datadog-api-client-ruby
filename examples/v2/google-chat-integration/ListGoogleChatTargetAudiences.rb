# Get all target audiences returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
p api_instance.list_google_chat_target_audiences("organization_binding_id")
