# Create an OpenAI Codex integration account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_open_ai_codex_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OpenAICodexIntegrationAPI.new

body = DatadogAPIClient::V2::OpenAICodexIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::OpenAICodexIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::OpenAICodexIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::OpenAICodexIntegrationAccountBearerTokenAuthRequest.new({
        auth_type: DatadogAPIClient::V2::OpenAICodexIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      dataflows: DatadogAPIClient::V2::OpenAICodexIntegrationDataflowsRequest.new({
        openai_codex_dora: DatadogAPIClient::V2::OpenAICodexDoraIntegrationDataflowRequest.new({
          enabled: true,
        }),
        openai_codex_turn_metrics: DatadogAPIClient::V2::OpenAICodexTurnMetricsIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "openai-codex-acme",
      settings: DatadogAPIClient::V2::OpenAICodexIntegrationAccountSettingsRequest.new({
        codex_workspace_id: "your-workspace-id",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_open_ai_codex_integration_account(body)
