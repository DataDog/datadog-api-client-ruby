# Get code coverage summary for a pull request returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CodeCoverageAPI.new

body = DatadogAPIClient::V2::PRCoverageSummaryRequest.new({
  data: DatadogAPIClient::V2::PRCoverageSummaryRequestData.new({
    attributes: DatadogAPIClient::V2::PRCoverageSummaryRequestAttributes.new({
      pr_number: 42,
      repository_url: "https://github.com/datadog/shopist",
    }),
    type: DatadogAPIClient::V2::PRCoverageSummaryRequestType::CI_APP_COVERAGE_PR_SUMMARY_REQUEST,
  }),
})
p api_instance.get_code_coverage_pr_summary(body)
