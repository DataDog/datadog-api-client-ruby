# Get channel information by name returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new
p api_instance.get_channel_by_name("tenant_name", "team_name", "channel_name")
