# List workflow instances returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new
p api_instance.list_workflow_instances("ccf73164-1998-4785-a7a3-8d06c7e5f558")
