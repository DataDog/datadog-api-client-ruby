# Get all teams with fields_team parameter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new
opts = {
  fields_team: [
    TeamsField::ID,
    TeamsField::NAME,
    TeamsField::HANDLE,
  ],
}
p api_instance.list_teams(opts)
