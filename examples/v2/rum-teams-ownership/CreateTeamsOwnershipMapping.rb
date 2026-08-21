# Create a teams ownership mapping returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_teams_ownership_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumTeamsOwnershipAPI.new

body = DatadogAPIClient::V2::TeamsOwnershipMappingCreateRequest.new({
  data: DatadogAPIClient::V2::TeamsOwnershipMappingCreateData.new({
    attributes: DatadogAPIClient::V2::TeamsOwnershipMappingCreateDataAttributes.new({
      application_id: "11111111-2222-3333-4444-555555555555",
      match_type: DatadogAPIClient::V2::TeamsOwnershipMatchType::EXACT,
      service: "web-checkout",
      team_handle: "team-rum",
      view_name: "/checkout",
    }),
    type: DatadogAPIClient::V2::TeamsOwnershipMappingType::TEAMS_OWNERSHIP_MAPPINGS,
  }),
})
p api_instance.create_teams_ownership_mapping(body)
