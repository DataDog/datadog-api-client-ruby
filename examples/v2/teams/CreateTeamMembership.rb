# Add a user to a team returns "Represents a user's association to a team" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::UserTeamRequest.new({
  data: DatadogAPIClient::V2::UserTeamCreate.new({
    attributes: DatadogAPIClient::V2::UserTeamAttributes.new({
      role: DatadogAPIClient::V2::UserTeamRole::ADMIN,
    }),
    relationships: DatadogAPIClient::V2::UserTeamRelationships.new({
      user: DatadogAPIClient::V2::RelationshipToUserTeamUser.new({
        data: DatadogAPIClient::V2::RelationshipToUserTeamUserData.new({
          id: USER_DATA_ID,
          type: DatadogAPIClient::V2::UserTeamUserType::USERS,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::UserTeamType::TEAM_MEMBERSHIPS,
  }),
})
p api_instance.create_team_membership(DD_TEAM_DATA_ID, body)
