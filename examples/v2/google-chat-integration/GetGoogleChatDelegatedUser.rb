# Get the delegated user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
p api_instance.get_google_chat_delegated_user("organization_binding_id")
