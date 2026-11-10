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
        enterprise_name: "acme",
        tags: "env:prod,team:finops",
      }),
    }),
    id: "4b7c2e1a-6f3d-4e8b-9a52-1d0c8f7e3b64",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_git_hub_costs_integration_account("account_id", body)
