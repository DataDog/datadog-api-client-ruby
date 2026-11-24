# Update a GitHub Costs integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_git_hub_costs_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GitHubCostsIntegrationAPI.new

body = DatadogAPIClient::V2::GitHubCostsIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::GitHubCostsIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::GitHubCostsIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::GitHubCostsIntegrationAccountBearerTokenAuthUpdate.new({
        auth_type: DatadogAPIClient::V2::GitHubCostsIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      name: "github-costs-acme",
      settings: DatadogAPIClient::V2::GitHubCostsIntegrationAccountSettingsUpdate.new({
        enterprise_name: "enterprise-name",
        tags: "env:prod,team:example",
      }),
    }),
    id: "5f1a8d3c-7e2b-4f9a-b6c4-8d0e3a7f1b52",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_git_hub_costs_integration_account("account_id", body)
