# Delete an existing Workflow returns "Successfully deleted a workflow." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

# there is a valid "workflow" in the system
WORKFLOW_DATA_ID = ENV["WORKFLOW_DATA_ID"]
api_instance.delete_workflow(WORKFLOW_DATA_ID)
