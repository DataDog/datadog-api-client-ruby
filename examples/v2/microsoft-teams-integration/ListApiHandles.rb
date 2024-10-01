# Get all handles returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new
p api_instance.list_api_handles()
