# Update a team link returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

# there is a valid "team_link" in the system
TEAM_LINK_DATA_ID = ENV["TEAM_LINK_DATA_ID"]

body = DatadogAPIClient::V2::TeamLinkCreateRequest.new({
  data: DatadogAPIClient::V2::TeamLinkCreate.new({
    attributes: DatadogAPIClient::V2::TeamLinkAttributes.new({
      label: "New Label",
      url: "https://example.com",
    }),
    type: DatadogAPIClient::V2::TeamLinkType::TEAM_LINKS,
  }),
})
p api_instance.update_team_link(DD_TEAM_DATA_ID, TEAM_LINK_DATA_ID, body)
