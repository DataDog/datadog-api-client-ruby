# Get a Data Access Control dataset by ID returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DataAccessControlsAPI.new
p api_instance.get_dataset("dataset_id")
