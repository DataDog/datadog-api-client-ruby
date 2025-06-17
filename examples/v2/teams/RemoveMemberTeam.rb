# Remove a member team returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.remove_member_team".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new
api_instance.remove_member_team("super_team_id", "member_team_id")
