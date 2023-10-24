# Get all teams with fields_team parameter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new
opts = {
  fields_team: [
    TeamsField::ID,
    TeamsField::NAME,
    TeamsField::HANDLE,
  ],
}
p api_instance.list_teams(opts)
