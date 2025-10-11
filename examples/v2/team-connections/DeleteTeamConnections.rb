# Delete team connections returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_team_connections".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamConnectionsAPI.new

# there is a valid "team_connection" in the system
TEAM_CONNECTION_ID = ENV["TEAM_CONNECTION_ID"]

body = DatadogAPIClient::V2::TeamConnectionDeleteRequest.new({
  data: [
    DatadogAPIClient::V2::TeamConnectionDeleteRequestDataItems.new({
      id: TEAM_CONNECTION_ID,
      type: DatadogAPIClient::V2::TeamConnectionType::TEAM_CONNECTION,
    }),
  ],
})
api_instance.delete_team_connections(body)
