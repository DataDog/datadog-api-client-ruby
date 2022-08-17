# Get specified daily custom reports returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_specified_daily_custom_reports("2022-03-20")
