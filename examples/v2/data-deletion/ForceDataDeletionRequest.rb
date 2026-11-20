# Forces a data deletion request returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.force_data_deletion_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DataDeletionAPI.new
p api_instance.force_data_deletion_request("id")
