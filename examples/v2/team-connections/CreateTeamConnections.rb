# Create team connections returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_team_connections".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamConnectionsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

body = DatadogAPIClient::V2::TeamConnectionCreateRequest.new({
  data: [
    DatadogAPIClient::V2::TeamConnectionCreateData.new({
      type: DatadogAPIClient::V2::TeamConnectionType::TEAM_CONNECTION,
      attributes: DatadogAPIClient::V2::TeamConnectionAttributes.new({
        source: "github",
        managed_by: "datadog",
      }),
      relationships: DatadogAPIClient::V2::TeamConnectionRelationships.new({
        team: DatadogAPIClient::V2::TeamRef.new({
          data: DatadogAPIClient::V2::TeamRefData.new({
            id: DD_TEAM_DATA_ID,
            type: DatadogAPIClient::V2::TeamRefDataType::TEAM,
          }),
        }),
        connected_team: DatadogAPIClient::V2::ConnectedTeamRef.new({
          data: DatadogAPIClient::V2::ConnectedTeamRefData.new({
            id: "@MyGitHubAccount/my-team-name",
            type: DatadogAPIClient::V2::ConnectedTeamRefDataType::GITHUB_TEAM,
          }),
        }),
      }),
    }),
  ],
})
p api_instance.create_team_connections(body)
