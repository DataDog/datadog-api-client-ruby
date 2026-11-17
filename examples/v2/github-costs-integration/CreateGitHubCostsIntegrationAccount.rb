# Create a GitHub Costs integration account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_git_hub_costs_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GitHubCostsIntegrationAPI.new

body = DatadogAPIClient::V2::GitHubCostsIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::GitHubCostsIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::GitHubCostsIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::GitHubCostsIntegrationAccountBearerTokenAuthRequest.new({
        auth_type: DatadogAPIClient::V2::GitHubCostsIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      name: "github-costs-acme",
      settings: DatadogAPIClient::V2::GitHubCostsIntegrationAccountSettingsRequest.new({
        enterprise_name: "acme",
        tags: "env:prod,team:finops",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_git_hub_costs_integration_account(body)
