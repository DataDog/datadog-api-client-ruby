# Create a new Action Connection with HTTPTokenAuth returns "Successfully created Action Connection" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

body = DatadogAPIClient::V2::CreateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionData.new({
    type: DatadogAPIClient::V2::ActionConnectionDataType::ACTION_CONNECTION,
    attributes: DatadogAPIClient::V2::ActionConnectionAttributes.new({
      name: "HTTP Token Connection exampleactionconnection",
      integration: DatadogAPIClient::V2::HTTPIntegration.new({
        type: DatadogAPIClient::V2::HTTPIntegrationType::HTTP,
        base_url: "https://api.example.com",
        credentials: DatadogAPIClient::V2::HTTPTokenAuth.new({
          type: DatadogAPIClient::V2::HTTPTokenAuthType::HTTPTOKENAUTH,
          tokens: [
            DatadogAPIClient::V2::HTTPToken.new({
              name: "ApiKey",
              type: DatadogAPIClient::V2::TokenType::SECRET,
              value: "secret-token-value",
            }),
          ],
          headers: [
            DatadogAPIClient::V2::HTTPHeader.new({
              name: "Authorization",
              value: "Bearer token-value",
            }),
          ],
        }),
      }),
    }),
  }),
})
p api_instance.create_action_connection(body)
