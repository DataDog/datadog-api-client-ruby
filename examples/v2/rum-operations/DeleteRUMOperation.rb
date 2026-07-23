# Delete a RUM operation returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_rum_operation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new
api_instance.delete_rum_operation("operation_id")
