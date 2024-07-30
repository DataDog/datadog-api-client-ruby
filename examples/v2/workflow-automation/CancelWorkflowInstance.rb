# Cancel a workflow instance returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new
p api_instance.cancel_workflow_instance("ccf73164-1998-4785-a7a3-8d06c7e5f558", "305a472b-71ab-4ce8-8f8d-75db635627b5")
