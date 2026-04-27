# Get a Bits AI SRE investigation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_investigation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsAISREAPI.new
p api_instance.get_investigation("id")
