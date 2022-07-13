# Get specified daily custom reports returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations["V1.get_specified_daily_custom_reports".to_sym] = true
end
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_specified_daily_custom_reports("2022-03-20")
