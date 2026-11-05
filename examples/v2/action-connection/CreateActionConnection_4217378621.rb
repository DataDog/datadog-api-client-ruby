# Create an HTTP Action Connection with an AWS Secrets Manager token

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

# there is a valid "action_connection" in the system
ACTION_CONNECTION_DATA_ID = ENV["ACTION_CONNECTION_DATA_ID"]

body = DatadogAPIClient::V2::CreateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionData.new({
    type: DatadogAPIClient::V2::ActionConnectionDataType::ACTION_CONNECTION,
    attributes: DatadogAPIClient::V2::ActionConnectionAttributes.new({
      name: "HTTP Secrets Manager Connection exampleactionconnection",
      external_secrets_manager: DatadogAPIClient::V2::ActionConnectionAWSSecretsManager.new({
        type: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerType::AWS_SECRETS_MANAGER,
        connection_id: ACTION_CONNECTION_DATA_ID,
        region: "us-east-1",
      }),
      integration: DatadogAPIClient::V2::HTTPIntegration.new({
        type: DatadogAPIClient::V2::HTTPIntegrationType::HTTP,
        base_url: "https://example.com",
        credentials: DatadogAPIClient::V2::HTTPTokenAuth.new({
          type: DatadogAPIClient::V2::HTTPTokenAuthType::HTTPTOKENAUTH,
          tokens: [
            DatadogAPIClient::V2::HTTPToken.new({
              name: "token",
              type: DatadogAPIClient::V2::TokenType::SECRET,
              value: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerReference.new({
                type: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerType::AWS_SECRETS_MANAGER,
                secret_id: "example/http",
                key: "token",
              }),
            }),
          ],
          headers: [
            DatadogAPIClient::V2::HTTPHeader.new({
              name: "ApiKey",
              value: "literal-value",
            }),
          ],
          url_parameters: [
            DatadogAPIClient::V2::UrlParam.new({
              name: "apiKey",
              value: "literal-value",
            }),
          ],
          body: DatadogAPIClient::V2::HTTPBody.new({
            content_type: "application/json",
            content: '{"example":"literal"}',
          }),
        }),
      }),
    }),
  }),
})
p api_instance.create_action_connection(body)
