# Get all member teams returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_member_teams".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new
p api_instance.list_member_teams("super_team_id")
