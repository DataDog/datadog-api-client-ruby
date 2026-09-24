# Create a team with V2 fields returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new

body = DatadogAPIClient::V2::TeamCreateRequest.new({
  data: DatadogAPIClient::V2::TeamCreate.new({
    attributes: DatadogAPIClient::V2::TeamCreateAttributes.new({
      handle: "test-handle-a0fc0297eb519635",
      name: "test-name-a0fc0297eb519635",
      avatar: "🥑",
      banner: 7,
      visible_modules: [
        "m1",
        "m2",
      ],
      hidden_modules: [
        "m3",
      ],
    }),
    type: DatadogAPIClient::V2::TeamType::TEAM,
  }),
})
p api_instance.create_team(body)
