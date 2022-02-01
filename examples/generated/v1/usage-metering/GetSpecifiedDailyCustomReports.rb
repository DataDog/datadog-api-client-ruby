require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_specified_daily_custom_reports] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
report_id = 'report_id_example' # String | Date of the report in the format `YYYY-MM-DD`.

begin
  # Get specified daily custom reports
  result = api_instance.get_specified_daily_custom_reports(report_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_specified_daily_custom_reports: #{e}"
end
