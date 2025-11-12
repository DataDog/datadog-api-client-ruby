# Delete team connections returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_team_connections".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamConnectionsAPI.new

body = DatadogAPIClient::V2::TeamConnectionDeleteRequest.new({
  data: [
    DatadogAPIClient::V2::TeamConnectionDeleteRequestDataItem.new({
      id: "12345678-1234-5678-9abc-123456789012",
      type: DatadogAPIClient::V2::TeamConnectionType::TEAM_CONNECTION,
    }),
  ],
})
api_instance.delete_team_connections(body)
