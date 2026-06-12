# Delete a Google Chat organization binding returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
api_instance.delete_google_chat_organization("organization_binding_id")
