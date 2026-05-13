# List execution steps returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_execution_steps".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DependencyManagementAPI.new
p api_instance.list_execution_steps("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
