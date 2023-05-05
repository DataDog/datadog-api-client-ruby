# Create a team returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

body = DatadogAPIClient::V2::TeamCreateRequest.new({
  data: DatadogAPIClient::V2::TeamCreate.new({
    attributes: DatadogAPIClient::V2::TeamCreateAttributes.new({
      handle: "1636629071",
      name: "1636629071",
      color: 6,
    }),
    relationships: DatadogAPIClient::V2::TeamCreateRelationships.new({
      users: DatadogAPIClient::V2::RelationshipToUsers.new({
        data: [],
      }),
    }),
    type: DatadogAPIClient::V2::TeamType::TEAM,
  }),
})
p api_instance.create_team(body)
