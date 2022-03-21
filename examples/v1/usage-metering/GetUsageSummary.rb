# Get usage across your multi-org account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_usage_summary("2021-11-11T11:11:11.111+00:00")
