# Update GitHub CI Visibility status returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityGitHubAccountsAPI.new

body = DatadogAPIClient::V2::CIAppGitHubAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::CIAppGitHubAccountUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::CIAppGitHubAccountUpdateRequestAttributes.new({
      account: "datadog",
      enabled: true,
      host: "github.com",
      repository: DatadogAPIClient::V2::CIAppGitHubAccountUpdateRequestRepository.new({
        enabled: true,
        name: "shopist",
      }),
    }),
    type: DatadogAPIClient::V2::CIAppGitHubAccountType::CI_GITHUB_ACCOUNT,
  }),
})
p api_instance.update_ci_app_git_hub_account(body)
