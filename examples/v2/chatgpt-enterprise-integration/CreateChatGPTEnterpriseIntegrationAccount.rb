# Create a ChatGPT Enterprise integration account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_chat_gpt_enterprise_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAPI.new

body = DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountBearerTokenAuthRequest.new({
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
      settings: DatadogAPIClient::V2::ChatGPTEnterpriseIntegrationAccountSettingsRequest.new({
        openai_org_id: "org-AbC123dEf456",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_chat_gpt_enterprise_integration_account(body)
