# Create a new Action Connection returns "Successfully created an Action Connection." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

body = DatadogAPIClient::V2::CreateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionData.new({
    attributes: DatadogAPIClient::V2::ActionConnectionAttributes.new({
      integration: DatadogAPIClient::V2::AWSIntegration.new({
        credentials: DatadogAPIClient::V2::AWSAssumeRole.new({
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
p api_instance.create_action_connection(body)
