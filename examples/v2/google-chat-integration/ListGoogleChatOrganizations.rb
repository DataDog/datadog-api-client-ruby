# Get all Google Chat organization bindings returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
p api_instance.list_google_chat_organizations()
