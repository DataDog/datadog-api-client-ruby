# Send one CI job log returns "Request accepted for processing" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityLogsAPI.new

body = [
  DatadogAPIClient::V2::CILogItem.new({
    message: "Running go test ./...",
    pipeline_unique_id: "3eacb6f3-ff04-4e10-8a9c-46e6d054024a",
    job_id: "job-456",
    provider_name: "example-provider",
    line_number: 1,
    status: "warn",
    section_name: "tests",
    ddtags: "runner:linux,architecture:amd64",
  }),
]
p api_instance.submit_ci_log(body)
