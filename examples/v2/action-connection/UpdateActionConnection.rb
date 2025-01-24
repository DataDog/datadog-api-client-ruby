# Update an existing Action Connection returns "Successfully updated an Action Connection." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

body = DatadogAPIClient::V2::UpdateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionDataUpdate.new({
    attributes: DatadogAPIClient::V2::ActionConnectionAttributesUpdate.new({
      integration: DatadogAPIClient::V2::AWSIntegrationUpdate.new({
        credentials: DatadogAPIClient::V2::AWSAssumeRoleUpdate.new({
          account_id: "111222333444",
          role: "my-role",
          type: DatadogAPIClient::V2::AWSAssumeRoleType::AWSASSUMEROLE,
        }),
        type: DatadogAPIClient::V2::AWSIntegrationType::AWS,
      }),
      name: "My AWS Connection",
    }),
    type: DatadogAPIClient::V2::ActionConnectionDataType::ACTION_CONNECTION,
  }),
})
p api_instance.update_action_connection("connection_id", body)
