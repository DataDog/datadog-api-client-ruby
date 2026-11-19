# Update an OpenAI Codex integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_open_ai_codex_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OpenAICodexIntegrationAPI.new

body = DatadogAPIClient::V2::OpenAICodexIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::OpenAICodexIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::OpenAICodexIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::OpenAICodexIntegrationAccountBearerTokenAuthUpdate.new({
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
      settings: DatadogAPIClient::V2::OpenAICodexIntegrationAccountSettingsUpdate.new({
        codex_workspace_id: "your-workspace-id",
      }),
    }),
    id: "7d2f9c4e-3a1b-4c8e-9f6d-2b5a8e1c0d47",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_open_ai_codex_integration_account("account_id", body)
