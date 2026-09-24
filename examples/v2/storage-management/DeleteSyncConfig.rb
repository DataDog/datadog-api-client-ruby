# Delete a Storage Management configuration returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::StorageManagementAPI.new
api_instance.delete_sync_config("id")
