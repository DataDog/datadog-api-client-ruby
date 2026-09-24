# Delete an API key returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new
p api_instance.delete_api_key("key")
