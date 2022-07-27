# Get hourly usage for application security returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_usage_application_security_monitoring("2021-11-11T11:11:11.111+00:00")
