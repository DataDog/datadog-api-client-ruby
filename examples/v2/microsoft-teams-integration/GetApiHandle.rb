# Get handle information returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new
p api_instance.get_api_handle("handle_id")
