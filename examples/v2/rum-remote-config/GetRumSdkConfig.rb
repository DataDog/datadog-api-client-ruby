# Get a RUM SDK configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_rum_sdk_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMRemoteConfigAPI.new
p api_instance.get_rum_sdk_config("config_id")
