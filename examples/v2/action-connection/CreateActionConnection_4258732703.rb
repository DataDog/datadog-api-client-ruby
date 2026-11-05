# Create an Anthropic Action Connection with an AWS Secrets Manager API token

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
      name: "Anthropic Secrets Manager Connection exampleactionconnection",
      external_secrets_manager: DatadogAPIClient::V2::ActionConnectionAWSSecretsManager.new({
        type: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerType::AWS_SECRETS_MANAGER,
        connection_id: ACTION_CONNECTION_DATA_ID,
        region: "us-east-1",
      }),
      integration: DatadogAPIClient::V2::AnthropicIntegration.new({
        type: DatadogAPIClient::V2::AnthropicIntegrationType::ANTHROPIC,
        credentials: DatadogAPIClient::V2::AnthropicAPIKey.new({
          type: DatadogAPIClient::V2::AnthropicAPIKeyType::ANTHROPICAPIKEY,
          api_token: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerReference.new({
            type: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerType::AWS_SECRETS_MANAGER,
            secret_id: "example/anthropic",
            key: "api_token",
          }),
        }),
      }),
    }),
  }),
})
p api_instance.create_action_connection(body)
