# Delete workflow executions returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_workflow_executions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DependencyManagementAPI.new
api_instance.delete_workflow_executions("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
