# Send batched CI job logs returns "Request accepted for processing" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityLogsAPI.new

body = [
  DatadogAPIClient::V2::CILogItem.new({
    message: "Starting tests",
    pipeline_unique_id: "3eacb6f3-ff04-4e10-8a9c-46e6d054024a",
    job_id: "job-456",
    line_number: 1,
    status: "notice",
    section_name: "tests",
  }),
  DatadogAPIClient::V2::CILogItem.new({
    message: "Tests passed",
    pipeline_unique_id: "3eacb6f3-ff04-4e10-8a9c-46e6d054024a",
    job_id: "job-456",
    line_number: 2,
  }),
]
p api_instance.submit_ci_log(body)
