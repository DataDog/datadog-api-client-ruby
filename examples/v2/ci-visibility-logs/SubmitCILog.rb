# Send CI job logs returns "Request accepted for processing" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityLogsAPI.new

body = [
  DatadogAPIClient::V2::CILogItem.new({
    ddtags: "runner:linux,architecture:amd64",
    job_id: "job-456",
    line_number: 812,
    message: "Running go test ./...",
    pipeline_unique_id: "3eacb6f3-ff04-4e10-8a9c-46e6d054024a",
    provider_name: "example-provider",
    section_name: "tests",
    status: "warn",
  }),
]
p api_instance.submit_ci_log(body)
