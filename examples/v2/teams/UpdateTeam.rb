# Update a team returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ATTRIBUTES_HANDLE = ENV["DD_TEAM_DATA_ATTRIBUTES_HANDLE"]
DD_TEAM_DATA_ATTRIBUTES_NAME = ENV["DD_TEAM_DATA_ATTRIBUTES_NAME"]
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

body = DatadogAPIClient::V2::TeamUpdateRequest.new({
  data: DatadogAPIClient::V2::TeamUpdate.new({
    attributes: DatadogAPIClient::V2::TeamUpdateAttributes.new({
      handle: DD_TEAM_DATA_ATTRIBUTES_HANDLE,
      name: "Example Team updated",
      avatar: "🥑",
      banner: 7,
      hidden_modules: [
        "m3",
      ],
      visible_modules: [
        "m1",
        "m2",
      ],
    }),
    type: DatadogAPIClient::V2::TeamType::TEAM,
  }),
})
p api_instance.update_team(DD_TEAM_DATA_ID, body)
