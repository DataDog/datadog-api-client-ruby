# Get handle information by name returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new
p api_instance.get_api_handle_by_name("handle_name")
