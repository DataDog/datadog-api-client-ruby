# Get the list of available daily custom reports returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations["V1.get_daily_custom_reports".to_sym] = true
end
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_daily_custom_reports()
