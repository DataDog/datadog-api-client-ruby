# Create a GCP Action Connection with AWS Secrets Manager references

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
      name: "GCP Secrets Manager Connection exampleactionconnection",
      external_secrets_manager: DatadogAPIClient::V2::ActionConnectionAWSSecretsManager.new({
        type: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerType::AWS_SECRETS_MANAGER,
        connection_id: ACTION_CONNECTION_DATA_ID,
        region: "us-east-1",
      }),
      integration: DatadogAPIClient::V2::GCPIntegration.new({
        type: DatadogAPIClient::V2::GCPIntegrationType::GCP,
        credentials: DatadogAPIClient::V2::GCPServiceAccount.new({
          type: DatadogAPIClient::V2::GCPServiceAccountCredentialType::GCPSERVICEACCOUNT,
          private_key: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerReference.new({
            type: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerType::AWS_SECRETS_MANAGER,
            secret_id: "example/gcp/service-account",
            key: "private_key",
          }),
          service_account_email: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerReference.new({
            type: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerType::AWS_SECRETS_MANAGER,
            secret_id: "example/gcp/service-account",
            key: "client_email",
          }),
        }),
      }),
    }),
  }),
})
p api_instance.create_action_connection(body)
