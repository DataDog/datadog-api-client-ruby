# Create a new Action Connection with HTTPBasicAuth returns "Successfully created Action Connection" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

body = DatadogAPIClient::V2::CreateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionData.new({
    type: DatadogAPIClient::V2::ActionConnectionDataType::ACTION_CONNECTION,
    attributes: DatadogAPIClient::V2::ActionConnectionAttributes.new({
      name: "HTTP Basic Auth Connection exampleactionconnection",
      integration: DatadogAPIClient::V2::HTTPIntegration.new({
        type: DatadogAPIClient::V2::HTTPIntegrationType::HTTP,
        base_url: "https://api.example.com",
        credentials: DatadogAPIClient::V2::HTTPBasicAuth.new({
          type: DatadogAPIClient::V2::HTTPBasicAuthType::HTTPBASICAUTH,
          username: "test-user",
          password: "test-password",
        }),
      }),
    }),
  }),
})
p api_instance.create_action_connection(body)
