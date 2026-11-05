# Update a GCP Action Connection with a versioned AWS Secrets Manager reference

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

# there is a valid "gcp_action_connection" in the system
GCP_ACTION_CONNECTION_DATA_ID = ENV["GCP_ACTION_CONNECTION_DATA_ID"]

# there is a valid "action_connection" in the system
ACTION_CONNECTION_DATA_ID = ENV["ACTION_CONNECTION_DATA_ID"]

body = DatadogAPIClient::V2::UpdateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionDataUpdate.new({
    type: DatadogAPIClient::V2::ActionConnectionDataType::ACTION_CONNECTION,
    attributes: DatadogAPIClient::V2::ActionConnectionAttributesUpdate.new({
      external_secrets_manager: DatadogAPIClient::V2::ActionConnectionAWSSecretsManager.new({
        type: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerType::AWS_SECRETS_MANAGER,
        connection_id: ACTION_CONNECTION_DATA_ID,
        region: "us-east-1",
      }),
      integration: DatadogAPIClient::V2::GCPIntegrationUpdate.new({
        type: DatadogAPIClient::V2::GCPIntegrationType::GCP,
        credentials: DatadogAPIClient::V2::GCPServiceAccountUpdate.new({
          type: DatadogAPIClient::V2::GCPServiceAccountCredentialType::GCPSERVICEACCOUNT,
          private_key: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerReference.new({
            type: DatadogAPIClient::V2::ActionConnectionAWSSecretsManagerType::AWS_SECRETS_MANAGER,
            secret_id: "example/gcp/service-account",
            key: "private_key",
            version_stage: "AWSCURRENT",
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
p api_instance.update_action_connection(GCP_ACTION_CONNECTION_DATA_ID, body)
