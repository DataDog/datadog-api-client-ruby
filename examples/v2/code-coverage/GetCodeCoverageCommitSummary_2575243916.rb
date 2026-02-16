# Get code coverage summary for an existing commit with valid repository

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_code_coverage_commit_summary".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CodeCoverageAPI.new

body = DatadogAPIClient::V2::CommitCoverageSummaryRequest.new({
  data: DatadogAPIClient::V2::CommitCoverageSummaryRequestData.new({
    attributes: DatadogAPIClient::V2::CommitCoverageSummaryRequestAttributes.new({
      repository_id: "github.com/datadog/shopist",
      commit_sha: "c55b0ce584e139bde41a00002ab31bc7d75f791d",
    }),
    type: DatadogAPIClient::V2::CommitCoverageSummaryRequestType::CI_APP_COVERAGE_COMMIT_SUMMARY_REQUEST,
  }),
})
p api_instance.get_code_coverage_commit_summary(body)
