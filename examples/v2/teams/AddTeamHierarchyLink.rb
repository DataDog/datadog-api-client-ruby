# Create a team hierarchy link returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

body = DatadogAPIClient::V2::TeamHierarchyLinkCreateRequest.new({
  data: DatadogAPIClient::V2::TeamHierarchyLinkCreate.new({
    relationships: DatadogAPIClient::V2::TeamHierarchyLinkCreateRelationships.new({
      parent_team: DatadogAPIClient::V2::TeamHierarchyLinkCreateTeamRelationship.new({
        data: DatadogAPIClient::V2::TeamHierarchyLinkCreateTeam.new({
          id: "692e8073-12c4-4c71-8408-5090bd44c9c8",
          type: DatadogAPIClient::V2::TeamType::TEAM,
        }),
      }),
      sub_team: DatadogAPIClient::V2::TeamHierarchyLinkCreateTeamRelationship.new({
        data: DatadogAPIClient::V2::TeamHierarchyLinkCreateTeam.new({
          id: "692e8073-12c4-4c71-8408-5090bd44c9c8",
          type: DatadogAPIClient::V2::TeamType::TEAM,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::TeamHierarchyLinkType::TEAM_HIERARCHY_LINKS,
  }),
})
p api_instance.add_team_hierarchy_link(body)
