# Create teams ownership mapping returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumTeamsOwnershipAPI.new

body = DatadogAPIClient::V2::TeamsOwnershipMappingCreateRequest.new({
  data: DatadogAPIClient::V2::TeamsOwnershipMappingCreateData.new({
    type: DatadogAPIClient::V2::TeamsOwnershipMappingType::TEAMS_OWNERSHIP_MAPPINGS,
    attributes: DatadogAPIClient::V2::TeamsOwnershipMappingCreateDataAttributes.new({
      team_handle: "team-rum",
      view_name: "/checkout-examplerumteamsownership",
      service: "web-checkout-examplerumteamsownership",
      match_type: DatadogAPIClient::V2::TeamsOwnershipMatchType::EXACT,
    }),
  }),
})
p api_instance.create_teams_ownership_mapping(body)
