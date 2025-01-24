# Update an existing Action Connection returns "Successfully updated Action Connection" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

body = DatadogAPIClient::V2::UpdateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionDataUpdate.new({
    type: DatadogAPIClient::V2::ActionConnectionDataType::ACTION_CONNECTION,
    attributes: DatadogAPIClient::V2::ActionConnectionAttributesUpdate.new({
      name: "Cassette Connection",
      integration: DatadogAPIClient::V2::AWSIntegrationUpdate.new({
        type: DatadogAPIClient::V2::AWSIntegrationType::AWS,
        credentials: DatadogAPIClient::V2::AWSAssumeRoleUpdate.new({
          type: DatadogAPIClient::V2::AWSAssumeRoleType::AWSASSUMEROLE,
          role: "MyRoleUpdated",
          account_id: "123456789123",
        }),
      }),
    }),
  }),
})
p api_instance.update_action_connection("cb460d51-3c88-4e87-adac-d47131d0423d", body)
