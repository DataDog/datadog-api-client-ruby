# Delete team connections returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "team_connection" in the system
TEAM_CONNECTION_ID = ENV["TEAM_CONNECTION_ID"]

body = DatadogAPIClient::V2::TeamConnectionDeleteRequest.new({
  data: [
    DatadogAPIClient::V2::TeamConnectionDeleteRequestDataItem.new({
      id: TEAM_CONNECTION_ID,
      type: DatadogAPIClient::V2::TeamConnectionType::TEAM_CONNECTION,
    }),
  ],
})
api_instance.delete_team_connections(body)
