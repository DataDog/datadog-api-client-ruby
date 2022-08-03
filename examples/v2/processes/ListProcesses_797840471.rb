# Get all processes returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ProcessesAPI.new
opts = {
  page_limit: 2,
}
api_instance.list_processes_with_pagination(opts) { |item| puts item }
