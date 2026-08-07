# List GitHub CI Visibility status returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityGitHubAccountsAPI.new
p api_instance.list_ci_app_git_hub_accounts()
