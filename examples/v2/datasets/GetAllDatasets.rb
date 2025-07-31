# Get all datasets returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_all_datasets".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DatasetsAPI.new
p api_instance.get_all_datasets()
