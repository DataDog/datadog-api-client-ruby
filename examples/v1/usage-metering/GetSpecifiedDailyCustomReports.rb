# Get specified daily custom reports returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_specified_daily_custom_reports] = true
end
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_specified_daily_custom_reports("report_id")
