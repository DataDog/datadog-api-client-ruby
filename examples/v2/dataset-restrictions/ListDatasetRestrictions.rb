# List dataset restrictions returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_dataset_restrictions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DatasetRestrictionsAPI.new
p api_instance.list_dataset_restrictions()
