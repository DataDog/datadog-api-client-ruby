# Delete a target audience returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
api_instance.delete_google_chat_target_audience("organization_binding_id", "target_audience_id")
