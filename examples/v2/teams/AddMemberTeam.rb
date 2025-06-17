# Add a member team returns "Added" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.add_member_team".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new

body = DatadogAPIClient::V2::AddMemberTeamRequest.new({
  data: DatadogAPIClient::V2::MemberTeam.new({
    id: "aeadc05e-98a8-11ec-ac2c-da7ad0900001",
    type: DatadogAPIClient::V2::MemberTeamType::MEMBER_TEAMS,
  }),
})
api_instance.add_member_team("super_team_id", body)
