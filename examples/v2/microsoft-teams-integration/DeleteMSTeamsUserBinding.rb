# Delete user binding returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new
api_instance.delete_ms_teams_user_binding("tenant_id")
