# Create a team hierarchy link returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

# there is a valid "dd_team_2" in the system
DD_TEAM_2_DATA_ID = ENV["DD_TEAM_2_DATA_ID"]

body = DatadogAPIClient::V2::TeamHierarchyLinkCreateRequest.new({
  data: DatadogAPIClient::V2::TeamHierarchyLinkCreate.new({
    relationships: DatadogAPIClient::V2::TeamHierarchyLinkCreateRelationships.new({
      parent_team: DatadogAPIClient::V2::TeamHierarchyLinkCreateTeamRelationship.new({
        data: DatadogAPIClient::V2::TeamHierarchyLinkCreateTeam.new({
          id: DD_TEAM_DATA_ID,
          type: DatadogAPIClient::V2::TeamType::TEAM,
        }),
      }),
      sub_team: DatadogAPIClient::V2::TeamHierarchyLinkCreateTeamRelationship.new({
        data: DatadogAPIClient::V2::TeamHierarchyLinkCreateTeam.new({
          id: DD_TEAM_2_DATA_ID,
          type: DatadogAPIClient::V2::TeamType::TEAM,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::TeamHierarchyLinkType::TEAM_HIERARCHY_LINKS,
  }),
})
p api_instance.add_team_hierarchy_link(body)
