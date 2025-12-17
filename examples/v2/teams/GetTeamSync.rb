# Get team sync configurations returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new
p api_instance.get_team_sync(TeamSyncAttributesSource::GITHUB)
