# Search RUM operations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_rum_operations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new
p api_instance.list_rum_operations()
