# Execute a workflow returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::WorkflowInstanceCreateRequest.new({
  meta: DatadogAPIClient::V2::WorkflowInstanceCreateMeta.new({
    payload: {
      "input": "value",
    },
  }),
})
p api_instance.create_workflow_instance("ccf73164-1998-4785-a7a3-8d06c7e5f558", body)
