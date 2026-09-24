# Gets a list of data deletion requests returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::DataDeletionAPI.new
p api_instance.get_data_deletion_requests()
