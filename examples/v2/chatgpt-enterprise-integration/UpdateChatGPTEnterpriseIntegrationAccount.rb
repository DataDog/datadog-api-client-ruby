# Update a ChatGPT Enterprise integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_chat_gpt_enterprise_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAPI.new

body = DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountBearerTokenAuthUpdate.new({
        auth_type: DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      dataflows: DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationDataflowsRequest.new({
        chatgpt_enterprise_agent_console: DatadogAPIClient::V2::ChatGPTEnterpriseAgentConsoleIntegrationDataflowRequest.new({
          enabled: true,
        }),
        chatgpt_enterprise_cloud_cost_data: DatadogAPIClient::V2::ChatGPTEnterpriseCloudCostDataIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "chatgpt-enterprise-acme",
      settings: DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountSettingsUpdate.new({
        openai_org_id: "org-AbC123dEf456",
      }),
    }),
    id: "3e8a1f6b-9c2d-4b7e-8a5f-6d1c4e9b2a03",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_chat_gpt_enterprise_integration_account("account_id", body)
