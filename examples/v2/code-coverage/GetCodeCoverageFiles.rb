# Get per-file code coverage data returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CodeCoverageAPI.new

body = DatadogAPIClient::V2::FilesCoverageRequest.new({
  data: DatadogAPIClient::V2::FilesCoverageRequestData.new({
    attributes: DatadogAPIClient::V2::FilesCoverageRequestAttributes.new({
      changed_only: true,
      commit_sha: "66adc9350f2cc9b250b69abddab733dd55e1a588",
      repository_url: "https://github.com/datadog/shopist",
    }),
    type: DatadogAPIClient::V2::FilesCoverageRequestType::CI_APP_COVERAGE_FILES_REQUEST,
  }),
})
p api_instance.get_code_coverage_files(body)
