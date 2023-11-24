# Update a user's membership attributes on a team returns "Represents a user's association to a team" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::UserTeamUpdateRequest.new({
  data: DatadogAPIClient::V2::UserTeamUpdate.new({
    attributes: DatadogAPIClient::V2::UserTeamAttributes.new({
      role: nil,
    }),
    type: DatadogAPIClient::V2::UserTeamType::TEAM_MEMBERSHIPS,
  }),
})
p api_instance.update_team_membership(DD_TEAM_DATA_ID, USER_DATA_ID, body)
