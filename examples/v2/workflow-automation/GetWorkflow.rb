# Get an existing Workflow returns "Successfully got a workflow." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

# there is a valid "workflow" in the system
WORKFLOW_DATA_ID = ENV["WORKFLOW_DATA_ID"]
p api_instance.get_workflow(WORKFLOW_DATA_ID)
