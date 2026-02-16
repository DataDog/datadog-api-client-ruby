# Get code coverage summary for a branch returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_code_coverage_branch_summary".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CodeCoverageAPI.new

body = DatadogAPIClient::V2::BranchCoverageSummaryRequest.new({
  data: DatadogAPIClient::V2::BranchCoverageSummaryRequestData.new({
    attributes: DatadogAPIClient::V2::BranchCoverageSummaryRequestAttributes.new({
      branch: "prod",
      repository_id: "github.com/datadog/shopist",
    }),
    type: DatadogAPIClient::V2::BranchCoverageSummaryRequestType::CI_APP_COVERAGE_BRANCH_SUMMARY_REQUEST,
  }),
})
p api_instance.get_code_coverage_branch_summary(body)
