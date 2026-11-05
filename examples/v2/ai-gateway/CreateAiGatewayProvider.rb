# Create an AI Gateway provider returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_ai_gateway_provider".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayProviderCreateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayProviderCreateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayProviderCreateAttributes.new({
      cost_multiplier: 1.0,
      initial_bindings: [
        DatadogAPIClient::V2::AiGatewayProviderInitialBinding.new({
          principals: [
            "org:11111111-1111-1111-1111-111111111111",
          ],
          relation: DatadogAPIClient::V2::AiGatewayProviderInitialBindingRelation::VIEWER,
        }),
      ],
      integration_account_id: "account-123",
      integration_config: DatadogAPIClient::V2::AiGatewayProviderIntegrationConfig.new({
        bedrock_region: "us-east-1",
        foundry_project: "my-project",
        foundry_resource_id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/ai/providers/Microsoft.CognitiveServices/accounts/my-foundry",
        location: "us-central1",
        project_id: "my-gcp-project",
        supported_operations: [
          DatadogAPIClient::V2::AiGatewayCustomProviderSupportedOperation::OPENAI_CHAT_COMPLETIONS,
        ],
      }),
      known_provider: DatadogAPIClient::V2::AiGatewayKnownProvider::OPENAI,
      models: [
        DatadogAPIClient::V2::AiGatewayModelInput.new({
          model_id_canonical: "gpt-5.2-codex",
          model_id_wire: "gpt-5.2-codex-20260801",
          supported_operations: [
            DatadogAPIClient::V2::AiGatewaySupportedOperation::OPENAI_CHAT_COMPLETIONS,
          ],
        }),
      ],
      name: "production-us",
      slug: "prod-us",
    }),
    type: DatadogAPIClient::V2::AiGatewayProviderType::PROVIDERS,
  }),
})
p api_instance.create_ai_gateway_provider(body)
