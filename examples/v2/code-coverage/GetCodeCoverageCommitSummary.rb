# Get code coverage summary for a commit returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_code_coverage_commit_summary".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CodeCoverageAPI.new

body = DatadogAPIClient::V2::CommitCoverageSummaryRequest.new({
  data: DatadogAPIClient::V2::CommitCoverageSummaryRequestData.new({
    attributes: DatadogAPIClient::V2::CommitCoverageSummaryRequestAttributes.new({
      commit_sha: "66adc9350f2cc9b250b69abddab733dd55e1a588",
      repository_id: "github.com/datadog/shopist",
    }),
    type: DatadogAPIClient::V2::CommitCoverageSummaryRequestType::CI_APP_COVERAGE_COMMIT_SUMMARY_REQUEST,
  }),
})
p api_instance.get_code_coverage_commit_summary(body)
