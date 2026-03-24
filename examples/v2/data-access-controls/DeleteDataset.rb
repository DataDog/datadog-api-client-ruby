# Delete a Data Access Control dataset returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DataAccessControlsAPI.new
api_instance.delete_dataset("dataset_id")
