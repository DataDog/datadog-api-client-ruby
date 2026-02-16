# Generate workflow description returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_workflow_description".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::WorkflowDescriptionRequest.new({
  name: "Alert Response Workflow",
  spec: {
    "steps": "[{'actionId': 'com.datadoghq.slack.send_message', 'name': 'Send notification'}]",
  },
})
p api_instance.create_workflow_description(body)
