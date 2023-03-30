# Add a user to a team returns "Represents a user's association to a team" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

body = DatadogAPIClient::V2::UserTeamRequest.new({
  data: DatadogAPIClient::V2::UserTeamCreate.new({
    attributes: DatadogAPIClient::V2::UserTeamAttributes.new({
      role: DatadogAPIClient::V2::UserTeamRole::ADMIN,
    }),
    relationships: DatadogAPIClient::V2::UserTeamRelationships.new({
      user: DatadogAPIClient::V2::RelationshipToUserTeamUser.new({
        data: DatadogAPIClient::V2::RelationshipToUserTeamUserData.new({
          id: "b8626d7e-cedd-11eb-abf5-da7ad0900001",
          type: DatadogAPIClient::V2::UserTeamUserType::USERS,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::UserTeamType::TEAM_MEMBERSHIPS,
  }),
})
p api_instance.create_team_membership("team_id", body)
