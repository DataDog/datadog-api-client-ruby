# Get team sync configurations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_team_sync".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new
p api_instance.get_team_sync(TeamSyncAttributesSource::GITHUB)
