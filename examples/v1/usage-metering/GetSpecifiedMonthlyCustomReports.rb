# Get specified monthly custom reports returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_specified_monthly_custom_reports("2021-05-01")
