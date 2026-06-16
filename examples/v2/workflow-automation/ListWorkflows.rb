# List workflows returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new
p api_instance.list_workflows()
