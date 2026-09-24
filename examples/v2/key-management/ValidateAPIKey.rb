# Validate API and application keys returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
p api_instance.validate_api_key()
