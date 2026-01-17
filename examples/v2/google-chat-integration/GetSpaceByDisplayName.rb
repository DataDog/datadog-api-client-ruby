# Get space information by display name returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
p api_instance.get_space_by_display_name("datadog.ninja", "api-test-space")
