# Bulk create and remove teams ownership mappings returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumTeamsOwnershipAPI.new

body = DatadogAPIClient::V2::TeamsOwnershipMappingBatchRequest.new({
  atomic_operations: [
    DatadogAPIClient::V2::TeamsOwnershipMappingBatchOperation.new({
      op: DatadogAPIClient::V2::TeamsOwnershipMappingBatchOperationOp::ADD,
      data: DatadogAPIClient::V2::TeamsOwnershipMappingBatchOperationData.new({
        type: DatadogAPIClient::V2::TeamsOwnershipMappingType::TEAMS_OWNERSHIP_MAPPINGS,
        attributes: DatadogAPIClient::V2::TeamsOwnershipMappingBatchOperationDataAttributes.new({
          team_handle: "team-rum",
          view_name: "/checkout-examplerumteamsownership",
          service: "web-checkout-examplerumteamsownership",
          match_type: DatadogAPIClient::V2::TeamsOwnershipMatchType::EXACT,
        }),
      }),
    }),
  ],
})
p api_instance.create_teams_ownership_mappings_batch(body)
