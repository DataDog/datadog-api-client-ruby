# Validate API key returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.validate".to_sym] = true
end
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
p api_instance.validate()
