# Gets a list of data deletion requests returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_data_deletion_requests".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DataDeletionAPI.new
p api_instance.get_data_deletion_requests()
