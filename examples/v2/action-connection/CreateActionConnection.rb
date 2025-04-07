# Create a new Action Connection returns "Successfully created Action Connection" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

body = DatadogAPIClient::V2::CreateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionData.new({
    type: DatadogAPIClient::V2::ActionConnectionDataType::ACTION_CONNECTION,
    attributes: DatadogAPIClient::V2::ActionConnectionAttributes.new({
      name: "Cassette Connection exampleactionconnection",
      integration: DatadogAPIClient::V2::AWSIntegration.new({
        type: DatadogAPIClient::V2::AWSIntegrationType::AWS,
        credentials: DatadogAPIClient::V2::AWSAssumeRole.new({
          type: DatadogAPIClient::V2::AWSAssumeRoleType::AWSASSUMEROLE,
          role: "MyRoleUpdated",
          account_id: "123456789123",
        }),
      }),
    }),
  }),
})
p api_instance.create_action_connection(body)
