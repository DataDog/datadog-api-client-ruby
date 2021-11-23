# Get all processes returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ProcessesAPI.new
opts = {
  search: "process-agent",
  tags: "testing:true",
  page_limit: 2,
}
p api_instance.list_processes(opts)
