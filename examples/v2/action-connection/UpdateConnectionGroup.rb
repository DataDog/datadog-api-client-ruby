# Update a connection group returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_connection_group".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

body = DatadogAPIClient::V2::UpdateConnectionGroupRequest.new({
  data: DatadogAPIClient::V2::ConnectionGroupDataRequest.new({
    attributes: DatadogAPIClient::V2::ConnectionGroupDataAttributesRequest.new({
      connections: [],
      description: "An updated test connection group for AWS integrations",
      name: "My Connection Group Updated",
      tag_keys: [],
    }),
    type: DatadogAPIClient::V2::ConnectionGroupType::CONNECTION_GROUP,
  }),
})
p api_instance.update_connection_group("connection_group_id", body)
