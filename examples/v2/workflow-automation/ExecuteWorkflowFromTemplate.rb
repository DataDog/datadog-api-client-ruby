# Execute a workflow from a template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.execute_workflow_from_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::WorkflowHeadlessExecutionRequest.new({
  data: DatadogAPIClient::V2::WorkflowHeadlessExecutionRequestData.new({
    attributes: DatadogAPIClient::V2::WorkflowHeadlessExecutionRequestAttributes.new({
      config: DatadogAPIClient::V2::WorkflowHeadlessExecutionConfig.new({
        connections: [
          DatadogAPIClient::V2::WorkflowHeadlessExecutionConnection.new({
            connection_id: "11111111-1111-1111-1111-111111111111",
            label: "INTEGRATION_DATADOG",
          }),
        ],
        inputs: {},
      }),
      template_id: "template-789",
    }),
    id: "1234",
    type: DatadogAPIClient::V2::WorkflowHeadlessExecutionRequestType::WORKFLOW_HEADLESS_EXECUTION_REQUEST,
  }),
})
p api_instance.execute_workflow_from_template("parent_id", body)
