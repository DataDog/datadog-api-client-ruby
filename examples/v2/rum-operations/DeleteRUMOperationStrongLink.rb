# Delete a RUM operation strong link returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_rum_operation_strong_link".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new
api_instance.delete_rum_operation_strong_link("operation_id", "feature_id")
