# List workflows returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new
opts = {
  filter_query: "Example-Workflow-Automation",
  limit: 2,
}
api_instance.list_workflows_with_pagination(opts) { |item| puts item }
