# Create a GitHub cloud auth intake mapping returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_git_hub_cloud_auth_intake_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new

body = DatadogAPIClient::V2::GitHubCloudAuthIntakeMappingCreateRequest.new({
  data: DatadogAPIClient::V2::GitHubCloudAuthIntakeMappingCreateData.new({
    attributes: DatadogAPIClient::V2::GitHubCloudAuthIntakeMappingCreateAttributes.new({
      claim_matchers: DatadogAPIClient::V2::GitHubOIDCClaimPatterns.new({
        actor: "octocat",
        actor_id: "1234567",
        enterprise: "test_enterprise",
        enterprise_id: "42",
        environment: "production",
        event_name: "push",
        job_workflow_ref: "test_owner/test_repo/.github/workflows/jobs.yml@refs/heads/main",
        ref: "refs/heads/main",
        ref_type: "branch",
        repository: "test_owner/test_repo",
        repository_id: "123456789",
        repository_owner: "test_owner",
        repository_owner_id: "987654321",
        repository_visibility: "public",
        runner_environment: "github-hosted",
        sub: "repo:test_owner/test_repo:(ref:refs/heads/main|pull_request)",
        workflow: "CI",
        workflow_ref: "test_owner/test_repo/.github/workflows/ci.yml@refs/heads/main",
      }),
    }),
    type: DatadogAPIClient::V2::GitHubCloudAuthIntakeMappingType::GITHUB_OIDC_AUTH_INTAKE_MAPPING,
  }),
})
p api_instance.create_git_hub_cloud_auth_intake_mapping(body)
