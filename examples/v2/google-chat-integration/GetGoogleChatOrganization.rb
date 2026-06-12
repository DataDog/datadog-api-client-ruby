# Get a Google Chat organization binding returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
p api_instance.get_google_chat_organization("organization_binding_id")
